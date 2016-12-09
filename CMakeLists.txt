cmake_minimum_required(VERSION 3.0)

project(kOSKernel ASM CXX)

set(CMAKE_ASM-NASM_COMPILER /usr/bin/nasm)
set(CMAKE_ASM-NASM_COMPILER_ARG1 "-felf64")
enable_language(ASM-NASM)

set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )

set( LINK_FLAGS "-n -T linker.ld" )

add_subdirectory(src/arch/x86_64/asm)
add_subdirectory(src/arch/x86_64/kernel)

add_dependencies(KERNEL ASM)

add_executable(kernel.bin /dev/null)
target_link_libraries(kernel.bin
	-nostdlib
	ASM
	KERNEL
)

set(ISO_FILE bin/os.iso)

add_custom_command(TARGET kernel.bin
	COMMAND mkdir -p isofiles/boot/grub
	COMMAND cp bin/kernel.bin isofiles/boot
	COMMAND cp grub.cfg isofiles/boot/grub
	COMMAND grub-mkrescue -d /usr/lib/grub/i386-pc -o ${ISO_FILE} isofiles/
)
