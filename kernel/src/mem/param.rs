use core::mem::size_of;

pub const KERNEL_HEAP_SIZE: usize = 0x20_0000; // kernel heap allocator size
pub const PAGE_SIZE: usize = 4096; // bytes per page
pub const PAGE_BITS: usize = 12; // bits of offset within a page
pub const PTE_FLAGS_BITS: usize = 10;
pub const PTE_NUM_PER_PAGE: usize = PAGE_BITS - size_of::<usize>();

// physical address & virtual address
pub const PA_WIDTH_SV39: usize = 56;
pub const VA_WIDTH_SV39: usize = 39;
pub const MAX_PHYS_ADDR: usize = (1 << PA_WIDTH_SV39) - 1;
pub const MAX_VIRT_ADDR: usize = (1 << VA_WIDTH_SV39) - 1;
pub const MAX_PHYS_SIZE: usize = 1 << (PA_WIDTH_SV39 - 1);
pub const MAX_VIRT_SIZE: usize = 1 << (VA_WIDTH_SV39 - 1);

// physical page number & virtual page number
pub const PPN_WIDTH_SV39: usize = PA_WIDTH_SV39 - PAGE_BITS;
pub const VPN_WIDTH_SV39: usize = VA_WIDTH_SV39 - PAGE_BITS;
pub const MAX_PPN: usize = (1 << PPN_WIDTH_SV39) - 1;
pub const MAX_VPN: usize = (1 << VPN_WIDTH_SV39) - 1;

pub const KERNELBASE: usize = 0x8020_0000;
pub const PHYSTOP: usize = (KERNELBASE + 128 * 1024 * 1024);
pub const TRAMPOLINE: usize = MAX_VIRT_SIZE - PAGE_SIZE;
