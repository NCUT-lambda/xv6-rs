K := .
U := ../user

TARGET := riscv64gc-unknown-none-elf
MODE   := release

BOOTLOADER = $K/../bootloader/rustsbi-qemu.bin
KERNEL_ELF = $K/target/$(TARGET)/$(MODE)/kernel
KERNEL_BIN = $(KERNEL_ELF).bin

OBJCOPY = rust-objcopy --binary-architecture=riscv64
OBJDUMP = rust-objdump

KERNEL_ENTRY_PA = 0x80200000

user-build :
	@cd $U && make build

user-clean :
	@cd $U && make clean

kernel-elf : user-build
	cargo build --release

kernel-bin : kernel-elf
	$(OBJCOPY) $(KERNEL_ELF) --strip-all -O binary $(KERNEL_BIN)
	$(OBJDUMP) -S $(KERNEL_ELF) > $K/kernel.asm


qemu : kernel-bin
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA)

qemu-gdb : kernel-bin
	@echo "default remote debug port is 1234."
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
    -s -S

clean: user-clean
	cargo clean
	-rm kernel.asm