K := kernel
U := user
L := bootloader

TARGET := riscv64gc-unknown-none-elf
MODE   := release

BOOTLOADER = $L/rustsbi-qemu.bin
KERNEL_ELF = $K/target/$(TARGET)/$(MODE)/kernel
KERNEL_BIN = $(KERNEL_ELF).bin

OBJCOPY = rust-objcopy --binary-architecture=riscv64
OBJDUMP = rust-objdump

KERNEL_ENTRY_PA = 0x80200000

fmt :
	@cd $K && cargo fmt

kernel-elf : fmt
	cd $K && cargo build --release

kernel-bin : kernel-elf
	$(OBJCOPY) $(KERNEL_ELF) --strip-all -O binary $(KERNEL_BIN)
	$(OBJDUMP) -S $(KERNEL_ELF) > $K/kernel.asm


qemu : kernel-bin
	qemu-system-riscv64 \
	-M 8m\
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA)

qemu-gdb : kernel-bin
	@echo "default remote debug port is 1234."
	qemu-system-riscv64 \
	-M 128m\
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
    -S -gdb tcp::26000

gdb :
	gdb-multiarch -ex 'file $(KERNEL_ELF)' -ex 'set arch riscv:rv64' -ex 'target remote localhost:26000'

kernel-clean:
	@cd $K && cargo clean

clean: kernel-clean