TARGET := riscv64gc-unknown-none-elf
MODE := release
APP_DIR := src/bin
TARGET_DIR := target/$(TARGET)/$(MODE)
APPS := $(wildcard $(APP_DIR)/*.rs)
ELFS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%, $(APPS))
BINS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%.bin, $(APPS))

OBJCOPY = rust-objcopy --binary-architecture=riscv64
OBJDUMP = rust-objdump

.PHONY: fmt clean

fmt :
	cargo fmt

elf : fmt
	cargo build --$(MODE)
	$(foreach elf, $(ELFS), $(OBJDUMP) -S $(elf) > $(elf).asm;)
	

binary : elf
	$(foreach elf, $(ELFS), $(OBJCOPY) $(elf) --strip-all -O binary $(patsubst $(TARGET_DIR)/%, $(TARGET_DIR)/%.bin, $(elf));)

build : elf

clean :
	cargo clean
	-rm -f Cargo.lock