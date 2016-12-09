#include "vga.hh"

const int VGA::VGA_WIDTH = 80;
const int VGA::VGA_HEIGHT = 25;

void VGA::putchar(const char c)
{
	this->buffer[offset_get()] = (this->color << 2) | c;
}

void VGA::print(const char *str)
{
	for(; str; str++)
		putchar(*str);
}
