
		
//draw_self();

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

	
//  health bar

if health_bar_timer > 0
	draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y-0.5 * health_bar_height,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_red,c_red,0,true,true)

// Debug stuff


if global.view_mode == 2{
	if scr_exists(target)
		draw_line_color(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y,c_red,c_fuchsia)
}