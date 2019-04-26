if global.view_mode == 2{
	draw_set_font(global.font_menu)
	draw_set_halign(fa_center)
	draw_set_color(c_purple)
	draw_text(500,500,string(global.player_entering_shop))
}