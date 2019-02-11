draw_self()
if global.view_mode == 2
{
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(x+20,y,"activated: " + string(activated))
}