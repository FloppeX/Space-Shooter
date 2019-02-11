// Write some stuff

draw_set_font(global.font_bigger_text)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)
temp_width = 0.5 * display_get_gui_width()
temp_height = 0.3 * display_get_gui_height()
draw_set_color(c_white)
if end_timer > 240
	draw_text_ext_transformed(temp_width,temp_height - 100,"You have escaped.",0,2400,1,1,0)
if end_timer > 360
	draw_text_ext_transformed(temp_width,temp_height,"Well done.",0,2400,1,1,0)	
temp_height = 0.7 * display_get_gui_height()
if end_timer > 1000
	draw_text_ext_transformed(temp_width,temp_height,"THE END",0,2400,1,1,0)