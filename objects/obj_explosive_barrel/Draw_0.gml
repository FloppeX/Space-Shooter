
draw_sprite_ext(sprite_index,-1,mirror_x,mirror_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,x,mirror_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,mirror_x,y,1,1,-phy_rotation,c_white,1)
draw_self();

// TEST
if global.view_mode == 2{
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(phy_position_x,phy_position_y+100,"phy_speed_x: " + string(phy_speed_x))
	draw_text(phy_position_x,phy_position_y+130,"phy_speed_y: " + string(phy_speed_y))
}