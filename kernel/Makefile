USER_DIR = "../user"

BOOTLOADER = ../bootloader/rustsbi-qemu.bin
KERNEL_ELF = target/riscv64gc-unknown-none-elf/release/kernel
KERNEL_BIN = $(KERNEL_ELF).bin
SRC = src/* src/*/*

OBJCOPY = rust-objcopy --binary-architecture=riscv64
OBJDUMP = rust-objdump

KERNEL_ENTRY_PA = 0x80200000

$(KERNEL_ELF) : $(SRC)
	@cd $(USER_DIR) && make build
	cargo build --release
	$(OBJDUMP) -S $@ > kernel.asm

$(KERNEL_BIN) : $(KERNEL_ELF)
	$(OBJCOPY) $(KERNEL_ELF) --strip-all -O binary $@

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
    -s -S

clean:
	cargo clean
	-rm kernel.asm
	@cd $(USER_DIR) && make clean