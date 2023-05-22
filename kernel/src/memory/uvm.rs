use core::{panic, ptr::null_mut};

use crate::{
    riscv::{pte2pa, pte_flags, Addr, PteT, NPTE, PGSIZE, PTE_R, PTE_U, PTE_V, PTE_W, PTE_X},
    string::{memmove, memset},
};

use super::{
    kalloc::{kalloc, kfree},
    pagetable::PagetableT,
    pgroundup, pgrounddown,
	read, write
};

pub struct Uvm {
    pub pagetable: PagetableT,
}

impl Uvm {
    pub fn new() -> Self {
        Self {
            pagetable: PagetableT::addr2pagetablet(0),
        }
    }

    pub fn from_pagetable(pgtbl: PagetableT) -> Self {
        Self { pagetable: pgtbl }
    }

    // 创建一个空的用户页表
    // 内存不足时返回 0
    pub fn uvmcreate() -> PagetableT {
        let pagetable = PagetableT::addr2pagetablet(kalloc());
        memset(pagetable.data, 0, PGSIZE);
        pagetable
    }

    pub fn valid(&self) -> bool {
        self.pagetable.valid()
    }

    // 取消映射 va 开始的 n 个页面
    // va 必须页对齐，并且映射必须存在
    // 可选是否释放物理内存
    pub fn uvmunmap(&mut self, va: Addr, npages: usize, do_free: bool) {
        if va % PGSIZE != 0 {
            panic!("uvmunmap: not aligned");
        }

        let mut a = va;
        let mut pte;
        for _ in 0..npages {
            pte = self.pagetable.walk(a, false);
            if pte.is_null(){
                panic!("uvmunmap: walk");
            }
            let pte = unsafe { &mut *pte };

            if *pte & PTE_V == 0 {
                panic!("uvmunmap: not maapped");
            }
            if pte_flags(*pte) == PTE_V {
                panic!("uvmunmap: not a leaf");
            }

            if do_free {
                let pa = pte2pa(*pte);
                kfree(pa);
            }
            *pte = 0;
            a += PGSIZE;
        }
    }

    // 将 initcode 复制到用户逻辑地址 0
    // 用于第 0 个进程 ( the very first process)
    // sz 必须小于一个页面
    pub fn uvmfirst(&mut self, src: *const u8, sz: usize) {
        if sz >= PGSIZE {
            panic!("uvmfirst: more than a page");
        }

        let mem = kalloc();
        memset(mem as *mut u8, 0, PGSIZE);
        self.pagetable
            .mappages(0, PGSIZE, mem, PTE_W | PTE_R | PTE_X | PTE_U);
        memmove(mem as *mut u8, src as *mut u8, sz);
    }

    // 增加用户程序内存，并会分配相应的页表项
    // 从 oldsz 变为 newsz，不必页对齐
    // 返回 newsz，出错时返回 0
    pub fn uvmalloc(&mut self, mut oldsz: usize, newsz: usize, xperm: usize) -> usize {
        if newsz < oldsz {
            return oldsz;
        }
        oldsz = pgroundup(oldsz);

        let mut a = oldsz;
        while a < newsz {
            let mem = kalloc();
            if mem == 0 {
                self.uvmdealloc(a, oldsz);
                return 0;
            }
            memset(mem as *mut u8, 0, PGSIZE);
            if self
                .pagetable
                .mappages(a, PGSIZE, mem, PTE_R | PTE_U | xperm)
                != 0
            {
                kfree(mem);
                self.uvmdealloc(a, oldsz);
                return 0;
            }
            a += PGSIZE;
        }

        newsz
    }

    // 减小用户程序内存。从 oldsz 变为 newsz，不必页对齐
    // 返回 newsz，出错时返回 0
    pub fn uvmdealloc(&mut self, mut oldsz: usize, newsz: usize) -> usize {
        if newsz >= oldsz {
            return oldsz;
        }
        let oldpages = pgroundup(oldsz);
        let newpages = pgroundup(newsz);
        if newpages < oldpages {
            self.uvmunmap(newsz, (oldpages - newpages) / PGSIZE, true);
        }

        newsz
    }

    // 递归释放页表页面
    // 所有的映射关系必须已经移除
    pub fn freewalk(&mut self) {
        for i in 0..NPTE {
            let pte = self.pagetable.ipte(i);
            if (*pte & PTE_V) != 0 && (*pte & (PTE_R | PTE_W | PTE_X) == 0) {
                let mut child = Self::from_pagetable(PagetableT::addr2pagetablet(pte2pa(*pte)));
                child.freewalk();
                *pte = 0;
            } else if (*pte & PTE_V) != 0 {
                panic!("freewalk: leaf");
            }
        }
        kfree(self.pagetable.pagetablet2addr());
    }

	// 清空用户内存，然后清空页表
	pub fn uvmfree(&mut self, sz: usize) {
		if sz > 0 {
			self.uvmunmap(0, pgroundup(sz) / PGSIZE, true);
			self.freewalk();
		}
	}

	// 复制父进程的内存给子进程
	// 包括物理内存和页表
	// 成功返回 0，否则返回 -1
	pub fn uvmcopy(&mut self, new: &mut Uvm, sz: usize) -> isize {
		let mut a = 0usize;
		let mut err = false;
		while a < sz {
			let pte = self.pagetable.walk(a, false);
			if pte.is_null() {
				panic!("uvmcopy: pte should exist");
			}
			let pte = unsafe {*pte};
			if (pte & PTE_V) == 0 {
				panic!("uvmcopy: page not present");
			}
			let pa = pte2pa(pte);
			let flags = pte_flags(pte);
			let mem = kalloc();
			if mem == 0 {				// err
				err = true;
				break;
			}
			memmove(mem as *mut u8, pa as *mut u8, PGSIZE);
			if new.pagetable.mappages(a, PGSIZE, mem, flags) != 0 {
				kfree(mem);
				err = true;
				break;
			}
			a += PGSIZE;
		}
		if err {
			new.uvmunmap(0, a/PGSIZE, true);
			return -1;
		}

		0
	}

	// 标记一个页表项为无效的
	// 在 exec() 设置用户栈的保护页时会被使用
	pub fn uvmclear(&mut self, va: Addr) {
		let pte = self.pagetable.walk(va, false);
		if pte.is_null() {
			panic!("uvmclear");
		}
		let pte = unsafe {&mut *pte};
		*pte &= !PTE_U;
	}

	// 从内核复制进用户内存
	// 成功返回 0，否则返回 -1
	pub fn copyout<T>(&mut self, mut dstva: Addr, mut src: *const T, mut len: usize) -> isize {
        let mut src = src as Addr;
		while len > 0 {
			let va0 = pgrounddown(dstva);
			let pa0 = self.pagetable.walkaddr(va0);
			if pa0 == 0 {
				return -1;
			}
			let mut n = PGSIZE - (dstva - va0);
			if n > len {
				n = len;
			}
			memmove((pa0 + dstva - va0) as *mut u8, src as *const u8, n);

			len -= n;
			src += n;
			dstva = va0 + PGSIZE;
		}

		0
	}

	// 从用户复制进内核内存
	// 成功返回 0，否则返回 -1
	pub fn copyin<T>(&mut self, mut dst: *mut T, mut srcva: Addr, mut len: usize) -> isize {
        let mut dst = dst as *mut u8;
		while len > 0 {
			let va0 = pgrounddown(srcva);
			let pa0 = self.pagetable.walkaddr(va0);
			if pa0 == 0 {
				return -1;
			}
			let mut n = PGSIZE - (srcva - va0);
			if n > len {
				n = len;
			}
			memmove(dst, (pa0 + srcva - va0) as *const u8, n);

			len -= n;
			dst = unsafe { dst.add(n) };
			srcva = va0 + PGSIZE;
		}

		0
	}

	// 将来自用户的一个以 NULL 结尾的字符串复制进入内核
	// 最大复制长度为 max
	// 成功返回 0，否则返回 -1
	pub fn copyinstr(&mut self, dst: Addr, srcva: Addr, max: usize) -> isize {
		todo!()
	}

}

pub fn uvm_test() {
    let uvm = Uvm::uvmcreate();
    
}