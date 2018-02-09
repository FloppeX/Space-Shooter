draw_self();

module_under_cursor = instance_place(phy_position_x,phy_position_y,obj_module)
if module_under_cursor != noone
	for(var i = 0; i < array_length_1d(module_under_cursor.description_lines); i+=1;)
		draw_text(module_under_cursor.phy_position_x,module_under_cursor.phy_position_y+20*i,module_under_cursor.description_lines[i])