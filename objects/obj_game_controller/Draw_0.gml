// Drav lines if view mode 2 

if global.view_mode == 2{
	draw_set_color(c_orange)
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_right,global.wrap_border_top,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_bottom,global.wrap_border_right,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_left,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_right,global.wrap_border_top,global.wrap_border_right,global.wrap_border_bottom,5)

	draw_set_color(c_maroon)
	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,room_height - global.wrap_margin_player,room_width- global.wrap_margin_player,room_height -global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	draw_line_width(room_width- global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	}


// Draw black borders

if global.view_mode == 1 and global.zoom > 2160{
draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_top-1000,global.wrap_border_left,global.wrap_border_bottom+1000,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_top-1000,global.wrap_border_right+3000,global.wrap_border_top,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_right,global.wrap_border_top-1000,global.wrap_border_right+3000,global.wrap_border_bottom+1000,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_bottom,global.wrap_border_right+3000,global.wrap_border_bottom+1000,0)
}