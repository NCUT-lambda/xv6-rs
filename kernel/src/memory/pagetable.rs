use core::{mem::transmute, ptr::null_mut};

use crate::{
    riscv::{
        pa2pte, pte2pa, px, Addr, PteT, MAXVA, NPTE, PGSHIFT, PGSIZE, PTE_U, PTE_V, SATP_SV39,
    },
    string::memset,
};

use super::{kalloc::kalloc, pgrounddown};

#[repr(C)]
pub struct PagetableT {
    pub data: *mut [PteT; NPTE],
}

impl PagetableT {
    // 将一个 Addr 转换成 PagetableT
    pub fn addr2pagetablet(addr: Addr) -> Self {
        Self {
            data: unsafe { transmute(addr as *mut PteT) },
        }
    }

    // 转换成 Addr
    pub fn pagetablet2addr(&self) -> Addr {
        self.data as Addr
    }

    pub fn ipte<'a>(&mut self, i: usize) -> &'a mut PteT {
        unsafe { transmute((self.data as *mut PteT).add(i)) }
    }

    // 返回一个虚拟地址对应页表项指针
    // alloc 为 true 时会自动创建缺失的页表
    pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
        if va >= MAXVA {
            panic!("walk");
        }

        let mut pte: &mut PteT;
        let mut pagetable = PagetableT::addr2pagetablet(self.pagetablet2addr());

        for level in (1..3).rev() {
            pte = pagetable.ipte(px(level, va));
            if (*pte & PTE_V) != 0 {
                pagetable = PagetableT::addr2pagetablet(pte2pa(*pte));
            } else {
                if !alloc {
                    return null_mut();
                }
                let pa = kalloc();
                if pa == 0 {
                    return null_mut();
                }
                pagetable = PagetableT::addr2pagetablet(pa);
                memset(pa, 0, PGSIZE);
                *pte = pa2pte(pa) | PTE_V;
            }
            // if va == 0x87ffffff {
            //     for i in 0..128 {
            //         print!("{}: ", i);
            //         for j in 0..4 {
            //             print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
            //         }
            //         println!("");
            //     }
            // }
        }

        pagetable.ipte(px(0, va))
    }

    // 通过查页表，返回一个虚拟地址对应的物理地址
    // 只能用于用户页表
    pub fn walkaddr(&mut self, va: Addr) -> Addr {
        if va >= MAXVA {
            return 0;
        }

        let pte = self.walk(va, false);
        if pte == null_mut() {
            return 0;
        }
        let pte = unsafe { *pte };
        if (pte & PTE_V) == 0 {
            return 0;
        }
        if (pte & PTE_U) == 0 {
            return 0;
        }
        pte2pa(pte)
    }

    // 映射一个虚拟页面到一个物理页面
    // 返回 true 表示成功, false 表示失败
    pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
        if size == 0 {
            panic!("mappages: size");
        }

        let mut a = pgrounddown(va);
        let last = pgrounddown(va + size - 1);
        while a <= last {
            // println!("mapping addr: {:#x}", a);
            let pte = self.walk(a, true);
            if pte == null_mut() {
                return false;
            }
            if unsafe { *pte & PTE_V } != 0 {
                panic!("mappages: remap");
            }
            unsafe { *pte = pa2pte(pa) | perm | PTE_V }
            a += PGSIZE;
            pa += PGSIZE;
        }
        true
    }

    pub fn make_satp(&self) -> usize {
        let satp = self.pagetablet2addr();
        SATP_SV39 | (satp >> PGSHIFT)
    }
}
