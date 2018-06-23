draw_self();
draw_set_font(font_small_text)
draw_set_color(c_white)
module_under_cursor = instance_place(x,y,obj_module)
if module_under_cursor != noone
	with(module_under_cursor){
		draw_set_font(font_small_text)
		draw_set_color(c_white)
		for(var i = 0; i < array_length_1d(description_lines); i+=1;)
			draw_text(phy_position_x,phy_position_y+20*i,description_lines[i])
			draw_text(phy_position_x+120,phy_position_y,"Cost: " + string(cost))
		}