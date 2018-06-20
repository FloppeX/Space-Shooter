draw_self()
{
	draw_set_font(font_small_text)
	draw_set_color(c_white)
	draw_text(x+20,y,"activated: " + string(activated))
}