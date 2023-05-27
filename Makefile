K := kernel
U := user

TARGET := riscv64gc-unknown-none-elf
MODE   := release

KERNEL_ELF = $K/target/$(TARGET)/$(MODE)/kernel
KERNEL_BIN = $(KERNEL_ELF).bin
BOOTLOADER = bootloader/rustsbi-qemu.bin

KERNEL_ENTRY_PA = 0x80200000

.PHONY: kernel user clean

kernel:
	@cd $K && make build

user:
	@cd $U && make build

CPUS := 3


qemu : user kernel
	qemu-system-riscv64 \
	-M 128m \
	-smp $(CPUS) \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA)

qemu-gdb : user kernel
	@echo "default remote debug port is 26000."
	qemu-system-riscv64 \
	-M 128m \
	-smp $(CPUS) \
    -machine virt \
    -nographic \
    -bios $(BOOTLOADER) \
    -device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA) \
    -S -gdb tcp::26000

gdb :
	gdb-multiarch -ex 'file $(KERNEL_ELF)' -ex 'set arch riscv:rv64' -ex 'target remote localhost:26000'

clean:
	@cd $K && make clean
	@cd $U && make clean