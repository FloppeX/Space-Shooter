if global.view_mode == 2{
	draw_set_font(font_big_text)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(860,80,"FPS: " + string(fps))
	draw_text(860,120,"Real FPS: " + string(fps_real))
	draw_text(860,160,"Ships: " + string(instance_number(obj_enemy_ship)))
	if scr_timer(60)
		draw_text(860,200,"BEEP")
}