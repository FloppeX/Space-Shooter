draw_set_color(color)
draw_set_font(font_menu);
draw_set_valign(fa_top);

if alignment == "left"{
	draw_set_halign(fa_left);
	for(var i = 0; i < array_length_1d(menu_items); i+= 1)
	draw_text(x_pos,y_pos+i*item_distance,menu_items[i])
	if menu_active == true
		draw_rectangle(x_pos-marker_offset_h,y_pos+selected_item*item_distance-marker_offset_v,x_pos+string_width(menu_items[selected_item])+marker_offset_h,y_pos+selected_item*item_distance+string_height(menu_items[selected_item])+marker_offset_v,true)
	}

if alignment == "center"{
	draw_set_halign(fa_center);
	for(var i = 0; i < array_length_1d(menu_items); i+= 1)
	draw_text(x_pos,y_pos+i*item_distance,menu_items[i])
	if menu_active == true
		draw_rectangle(x_pos-0.5*string_width(menu_items[selected_item])-marker_offset_h,y_pos+selected_item*item_distance-marker_offset_v,x_pos+0.5 * string_width(menu_items[selected_item])+marker_offset_h,y_pos+selected_item*item_distance+string_height(menu_items[selected_item])+marker_offset_v,true)
	}