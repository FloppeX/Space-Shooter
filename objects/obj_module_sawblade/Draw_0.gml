//

event_inherited();

if global.view_mode == 2{
	draw_line_width_color(phy_position_x,phy_position_y,phy_position_x + lengthdir_x(100,-phy_rotation),phy_position_y + lengthdir_y(100,-phy_rotation),3,c_maroon,c_fuchsia)

	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(x,y+180,string(offset_angle))
}