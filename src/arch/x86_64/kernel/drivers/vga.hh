#pragma once

class VGA
{
	public:
		VGA() = default;

		void putchar(const char c);
		void print(const char *str);
		void color_set(const char value)
		{
			this->color = value;
		}
	private:
		inline int offset_get() const
		{
			return (this->cursor_x_ + this->cursor_y_ * VGA::VGA_WIDTH);
		}

		int *buffer = (int*)0xb8000;
		int cursor_x_;
		int cursor_y_;
		char color;
		static const int VGA_WIDTH;
		static const int VGA_HEIGHT;
};

