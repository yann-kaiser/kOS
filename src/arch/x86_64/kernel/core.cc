#include "drivers/vga.hh"

extern "C"
{
	void _start()
	{
		VGA vga;
		vga.color_set(0x3f);

		const char *text = "Hello, world. It's kOS !";
		vga.print(text);
	}
}
