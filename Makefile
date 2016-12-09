CXX=g++
CXXFLAGS=-Wall -Werror -Wextra -std=c++14 -pedantic -nostdinc
LDFLAGS=-nostdlib

SRC_PATH=src/arch/x86_64

ASM_SRC=boot.asm long_mode_init.asm
ASM_SRC:=$(addprefix $(SRC_PATH)/asm/, $(ASM_SRC))
ASM_OBJ=$(ASM_SRC:.asm=.o)

KERNEL_SRC=core.cc drivers/vga.cc
KERNEL_SRC:=$(addprefix $(SRC_PATH)/kernel/, $(KERNEL_SRC))
KERNEL_OBJ=$(KERNEL_SRC:.cc=.o)

ISO_FILE=build/os.iso

all: kernel.bin iso run

iso:
	grub-mkrescue -d /usr/lib/grub/i386-pc -o $(ISO_FILE) build/isofiles

run:
	qemu-system-x86_64 -cdrom $(ISO_FILE)

kernel.bin: $(ASM_OBJ) $(KERNEL_OBJ)
	ld -n -T $(SRC_PATH)/linker/linker.ld -o build/isofiles/boot/$@ $^

%.o: %.asm
	nasm -felf64 -o $@ $^

$(KERNELO): $(KERNEL_SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^
