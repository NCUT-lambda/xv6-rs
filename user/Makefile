APP_DIR = src/bin
TARGET_DIR = target/riscv64gc-unknown-none-elf/release

APPS = $(wildcard $(APP_DIR)/*.rs)
ELFS = $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%, $(APPS))
BINS = $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%.bin, $(APPS))

OBJCOPY = rust-objcopy --binary-architecture=riscv64

$(ELFS) : $(APPS)
	cargo build --release

$(BINS) : $(ELFS)
	$(foreach elf, $(ELFS), $(OBJCOPY) $(elf) --strip-all -O binary $(patsubst $(TARGET_DIR)/%, $(TARGET_DIR)/%.bin, $(elf));)

build : $(BINS)

test : $(BINS)
	@$(foreach bin, $(BINS), echo "--------------------"; echo "test: $(patsubst $(TARGET_DIR)/%.bin, %, $(bin))"; qemu-riscv64 $(patsubst $(TARGET_DIR)/%.bin, $(TARGET_DIR)/%, $(bin));)

clean : 
	cargo clean