BOOTLOADER = ../bootloader/rustsbi-qemu.bin
KERNEL_ELF = target/riscv64gc-unknown-none-elf/release/kernel
KERNEL_BIN = $(KERNEL_ELF).bin
SRC = src/*

OBJCOPY = rust-objcopy --binary--architecture=riscv64

KERNEL_ENTRY_PA = 0x80200000

$(KERNEL_ELF) : $(SRC)
	cargo build --release

$(KERNEL_BIN) : $(KERNEL_ELF)
	OBJCOPY $(KERNEL_ELF) --strip-all -O binary $@

qemu : $(KERNEL_BIN)
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA)

qemu-gdb : $(KERNEL_BIN)
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader, file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
    -s -S	// Default remote debug port is 1234.

clean :
	cargo clean