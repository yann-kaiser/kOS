#include "drivers/vga.hh"

extern "C"
{
	void _start()
	{
		VGA vga;
		vga.color_set(0x0F);
		const char *text = "Hello, world !";
		vga.print(text);
	}
}
