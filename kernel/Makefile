TARGET := riscv64gc-unknown-none-elf
MODE   := release

KERNEL_ELF = target/$(TARGET)/$(MODE)/kernel
KERNEL_BIN = $(KERNEL_ELF).bin

OBJCOPY = rust-objcopy --binary-architecture=riscv64
OBJDUMP = rust-objdump

.PHONY: fmt kernel-elf clean


fmt :
	cargo fmt

kernel-elf :
	cargo build --release

kernel-bin : kernel-elf
	$(OBJCOPY) $(KERNEL_ELF) --strip-all -O binary $(KERNEL_BIN)
	$(OBJDUMP) -S $(KERNEL_ELF) > kernel.asm

build: kernel-bin

clean:
	cargo clean
	-rm -f Cargo.lock kernel.asm src/link_app.S