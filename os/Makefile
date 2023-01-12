BOOTLOADER = ../bootloader/rustsbi-qemu.bin
KERNEL_ELF = target/riscv64gc-unknown-none-elf/release/os
KERNEL_BIN = $(KERNEL_ELF).bin
SRC = src/*

build : $(SRC)
	cargo build --release && \
	rust-objcopy $(KERNEL_ELF) -O binary $(KERNEL_BIN)

$(KERNEL_BIN) : build

qemu : $(KERNEL_BIN)
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=0x80200000

qemu-gdb : $(KERNEL_BIN)
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader, file=$(KERNEL_BIN),addr=0x80200000 \
    -s -S	// Default remote debug port is 1234.

clean :
	cargo clean