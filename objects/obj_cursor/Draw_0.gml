draw_self();
draw_set_font(font_small_text)
draw_set_color(c_white)
module_under_cursor = instance_place(x,y,obj_module)
if module_under_cursor != noone
	with(module_under_cursor)
		for(var i = 0; i < array_length_1d(description_lines); i+=1;)
			draw_text(x,y+20*i,description_lines[i])