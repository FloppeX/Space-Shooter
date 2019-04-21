for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	if ship_segment[i].ship_segment_right != noone
		draw_sprite_ext(spr_crossbar,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,draw_scale,draw_scale,-phy_rotation-90,c_white,alpha)
	if ship_segment[i].ship_segment_below != noone
		draw_sprite_ext(spr_crossbar,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,draw_scale,draw_scale,-phy_rotation+180,c_white,alpha)
	}
/*
for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	
	if ship_segment[i].ship_segment_right != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_right.phy_position_x,ship_segment[i].ship_segment_right.phy_position_y,4,c_gray,c_dkgray)
	if ship_segment[i].ship_segment_below != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_below.phy_position_x,ship_segment[i].ship_segment_below.phy_position_y,4,c_gray,c_dkgray)	
	if ship_segment[i].ship_segment_right != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_right.phy_position_x,ship_segment[i].ship_segment_right.phy_position_y,1,c_gray,c_gray)
	if ship_segment[i].ship_segment_below != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_below.phy_position_x,ship_segment[i].ship_segment_below.phy_position_y,1,c_gray,c_gray)	
	}
		
//draw_self();

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
*/
	
//  health bar

if health_bar_timer > 0
	draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y-0.5 * health_bar_height,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_red,c_red,0,true,true)

// Debug stuff


if global.view_mode == 2{
	if scr_exists(target)
		draw_line_color(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y,c_red,c_fuchsia)
}