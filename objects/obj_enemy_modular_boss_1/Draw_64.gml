

draw_set_font(global.font_bigger_text)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)
temp_width = 0.5 * display_get_gui_width()
temp_height = 0.9 * display_get_gui_height()
health_bar_width = 400
health_bar_height = 25

draw_text_ext_transformed(temp_width,temp_height-80,string(boss_name),0,3200,1,1,0)

draw_healthbar(temp_width - health_bar_width,temp_height - health_bar_height,temp_width + health_bar_width,temp_height + health_bar_height,100 * obj_health/max_health,c_dkgray,c_maroon,c_maroon,0,true,true)
