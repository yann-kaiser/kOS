CXX=g++
CXXFLAGS=-Wall -Werror -Wextra -pedantic -std=c++14 -nostdinc 
LDFLAGS=-nostdlib

arch ?= x86_64
src = src/arch/$(arch)
kernel := build/kernel-$(arch).bin
iso := build/os-$(arch).iso

KERNEL_LIB=libkernel.a

linker_script := $(src)/linker/linker.ld
grub_cfg := $(src)/grub/grub.cfg

VPATH = src/arch/x86_64/
ASM_OBJ := asm/boot.o asm/long_mode_init.o
ASM_OBJ := $(addprefix build/bin/, $(ASM_OBJ))

KERNEL_OBJ = kernel/core.o
KERNEL_OBJ := $(addprefix build/bin/, $(KERNEL_OBJ))

DRIVERS_OBJ = kernel/drivers/vga.o 
DRIVERS_OBJ := $(addprefix build/bin/, $(DRIVERS_OBJ))

.PHONY: all clean run iso

all: $(kernel)

clean:
	@rm -rf build/bin/asm/*.o
	@rm -rf build/bin/kernel/*.o
	@rm -rf build/bin/kernel/drivers/*.o

run: $(iso)
	@qemu-system-x86_64 -cdrom $(iso)

iso: $(iso)

$(iso): $(kernel) $(grub_cfg)
	@mkdir -p build/isofiles/boot/grub
	@cp $(kernel) build/isofiles/boot/kernel.bin
	@cp $(grub_cfg) build/isofiles/boot/grub
	@grub-mkrescue -d /usr/lib/grub/i386-pc -o $(iso) build/isofiles 2> /dev/null
	@rm -r build/isofiles

$(kernel): $(ASM_OBJ) $(KERNEL_LIB) $(linker_script)
	@mkdir -p build
	@ld -n -T $(linker_script) -o $(kernel) $(ASM_OBJ) $(KERNEL_LIB)

# compile assembly files
build/bin/asm/%.o: src/arch/x86_64/asm/%.asm	
	@nasm -felf64 $^ -o $@

build/bin/kernel/drivers/%.o: kernel/drivers/%.cc
	@echo DRIVERS!!
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

build/bin/kernel/%.o: kernel/%.cc
	@echo $(DRIVERS_OBJ)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

$(KERNEL_LIB): $(DRIVERS_OBJ) $(KERNEL_OBJ)
	mkdir -p $(shell dirname $^)
	ar rcs $@ $^
