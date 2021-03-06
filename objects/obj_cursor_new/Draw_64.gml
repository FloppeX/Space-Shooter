

draw_set_font(global.font_small_text)
draw_set_color(c_white)

if module_under_cursor != noone
	{
		var gui_x = x - view_wport[0]
		var gui_y = y - view_hport[0]
		var number_of_modifiers = array_height_2d(module_under_cursor.modifiers)
		var tmp_box_width = 180
		var tmp_box_height = 8 + 18 * (number_of_modifiers +1)
		if object_is_ancestor(module_under_cursor.object_index, obj_module_gun)
			tmp_box_height += 4 * 18
		var tmp_offset_x = 60
		var tmp_offset_y = -0.5 * tmp_box_height
		draw_set_color(c_black)
		draw_rectangle(gui_x+tmp_offset_x,gui_y+tmp_offset_y,gui_x+tmp_offset_x + tmp_box_width,gui_y+tmp_offset_y+tmp_box_height,0)
		draw_set_color(c_white)
		draw_rectangle(gui_x+tmp_offset_x,gui_y+tmp_offset_y,gui_x+tmp_offset_x + tmp_box_width,gui_y+tmp_offset_y+tmp_box_height,1)
		draw_set_font(global.font_big_text)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y+tmp_offset_y+5,module_under_cursor.module_name,0,800,0.3,0.3,0)
		for(var i = 0; i < array_height_2d(module_under_cursor.modifiers); i+=1;)
			if module_under_cursor.modifiers[i,2] != noone{
				draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y+tmp_offset_y+25+20*i,module_under_cursor.modifiers[i,2],0,800,0.3,0.3,0)
				draw_set_halign(fa_right)
				draw_text_ext_transformed(gui_x+tmp_offset_x + tmp_box_width -5,gui_y+tmp_offset_y+25+20*i,module_under_cursor.modifiers[i,3],0,800,0.3,0.3,0)
				draw_set_halign(fa_left)
				}
		if object_is_ancestor(module_under_cursor.object_index, obj_module_gun){
			draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y-20+tmp_offset_y+25+20*array_height_2d(module_under_cursor.modifiers),"Damage: " + string(module_under_cursor.bullet_damage),0,800,0.3,0.3,0)
			draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y-20+tmp_offset_y+45+20*array_height_2d(module_under_cursor.modifiers),"Range: " + string(module_under_cursor.bullet_range),0,800,0.3,0.3,0)
			draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y-20+tmp_offset_y+65+20*array_height_2d(module_under_cursor.modifiers),"Rate of fire: " + string(module_under_cursor.bullet_interval),0,800,0.3,0.3,0)
			draw_text_ext_transformed(gui_x+tmp_offset_x+5,gui_y-20+tmp_offset_y+85+20*array_height_2d(module_under_cursor.modifiers),"Recoil: " + string(module_under_cursor.recoil_force),0,800,0.3,0.3,0)
			}
		draw_set_halign(fa_right)
		if module_under_cursor.cost > 0
			draw_text_ext_transformed(gui_x+tmp_offset_x+tmp_box_width-5,gui_y+tmp_offset_y+5,"Cost: " + string(module_under_cursor.cost),0,800,0.3,0.3,0)
		else draw_text_ext_transformed_color(gui_x+tmp_offset_x+tmp_box_width-5,gui_y+tmp_offset_y+5,"Owned",0,800,0.3,0.3,0,c_lime,c_lime,c_lime,c_lime,1)
		draw_set_halign(fa_left)
		}