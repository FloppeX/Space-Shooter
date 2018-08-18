draw_set_font(font_big_text_gameplay)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)
temp_width = 0.5 * display_get_gui_width()
temp_timer = round(enemy_wave_timer/60)
if enemy_wave_timer >= 0
	draw_text_ext_transformed(temp_width,60,temp_timer,0,800,1,1,0)
else {
	draw_set_color(c_red)
	draw_text_ext_transformed(temp_width,60,"GET IN THE WORMHOLE!",0,800,1,1,0)
	}