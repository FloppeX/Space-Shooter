//draw_rectangle(global.wrap_border_left,global.wrap_border_top,global.wrap_border_right,global.wrap_border_bottom,true)

if global.view_mode == 2{
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_right,global.wrap_border_top,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_bottom,global.wrap_border_right,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_left,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_right,global.wrap_border_top,global.wrap_border_right,global.wrap_border_bottom,5)


	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,room_height - global.wrap_margin_player,room_width- global.wrap_margin_player,room_height -global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	draw_line_width(room_width- global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	}