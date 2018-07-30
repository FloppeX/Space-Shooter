draw_self();
draw_set_font(font_small_text)
draw_set_color(c_white)
module_under_cursor = instance_place(x,y,obj_module)
if module_under_cursor != noone
	{

		var tmp_box_width = 180
		var tmp_box_height = 8 + 18 * array_length_1d(module_under_cursor.description_lines)
		var tmp_offset_x = 60
		var tmp_offset_y = -0.5 * tmp_box_height
		draw_set_color(c_black)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,0)
		draw_set_color(c_white)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,1)
		draw_set_font(font_big_text)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		for(var i = 0; i < array_length_1d(module_under_cursor.description_lines); i+=1;)
			draw_text_ext_transformed(x+tmp_offset_x+5,y+tmp_offset_y+5+20*i,module_under_cursor.description_lines[i],0,800,0.3,0.3,0)
		draw_set_halign(fa_right)
		if module_under_cursor.cost > 0
			draw_text_ext_transformed(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Cost: " + string(module_under_cursor.cost),0,800,0.3,0.3,0)
		else draw_text_ext_transformed_color(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Owned",0,800,0.3,0.3,0,c_lime,c_lime,c_lime,c_lime,1)
		draw_set_halign(fa_left)
		}
		
button_under_cursor = instance_place(x,y,obj_shop_button)
if button_under_cursor != noone
	{

		var tmp_box_width = 180
		var tmp_box_height = 8 + 18 * array_length_1d(button_under_cursor.description_lines)
		var tmp_offset_x = 60
		var tmp_offset_y = -0.5 * tmp_box_height
		draw_set_color(c_black)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,0)
		draw_set_color(c_white)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,1)
		draw_set_font(font_big_text)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		for(var i = 0; i < array_length_1d(button_under_cursor.description_lines); i+=1;)
			draw_text_ext_transformed(x+tmp_offset_x+5,y+tmp_offset_y+5+20*i,button_under_cursor.description_lines[i],0,800,0.3,0.3,0)
		draw_set_halign(fa_right)
		if button_under_cursor.cost > 0
			draw_text_ext_transformed(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Cost: " + string(button_under_cursor.cost),0,800,0.3,0.3,0)
		else draw_text_ext_transformed_color(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Free",0,800,0.3,0.3,0,c_lime,c_lime,c_lime,c_lime,1)
		draw_set_halign(fa_left)
		}