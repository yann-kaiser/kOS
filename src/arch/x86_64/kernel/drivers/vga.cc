#include "vga.hh"

const int VGA::VGA_WIDTH = 80;
const int VGA::VGA_HEIGHT = 25;

void VGA::putchar(const char c)
{
	if (c == '\n')
	{
		this->cursor_y_++;
		return;
	}

	if (c == '\r')
	{
		this->cursor_x_ = 0;
		return;
	}
	this->buffer[offset_get()] = c;
	this->buffer[offset_get() + 1] = this->color;
	this->cursor_x_++;
}

void VGA::print(const char *str)
{
	for(; *str; str++)
		putchar(*str);
}
