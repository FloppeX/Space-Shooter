draw_set_color(color)
draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for(var i = 0; i < array_length_1d(menu_items); i+= 1)
	draw_text(x,y+i*item_distance,menu_items[i])
	
draw_rectangle(x-marker_distance_from_text,y+selected_item*item_distance-marker_distance_from_text,x+string_width(menu_items[selected_item])+marker_distance_from_text,y+selected_item*item_distance+string_height(menu_items[selected_item])+marker_distance_from_text,true)