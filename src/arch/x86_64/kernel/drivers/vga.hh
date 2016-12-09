#pragma once

class VGA
{
	public:
		VGA()
			: cursor_x_(0)
			, cursor_y_(0)
	{}

		void putchar(const char c);
		void print(const char *str);
		void color_set(const char value)
		{
			this->color = value;
		}
	private:
		inline int offset_get() const
		{
			return (this->cursor_x_ + this->cursor_y_ * VGA::VGA_WIDTH) * 2;
		}

		char *buffer = (char*)0xb8000;
		int cursor_x_;
		int cursor_y_;
		char color;
		static const int VGA_WIDTH;
		static const int VGA_HEIGHT;
};

