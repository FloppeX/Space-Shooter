wormhole = instance_nearest(phy_position_x,phy_position_y,obj_wormhole)

if wormhole == noone
	instance_destroy();

//

scr_find_mirror_positions();

scr_wrap_room();


// TEST!
wormhole = instance_nearest(phy_position_x,phy_position_y,obj_wormhole)
if scr_exists(wormhole){
	// Move the traveller to the center of the wormhole

	var temp_dir = point_direction(phy_position_x,phy_position_y,wormhole.phy_position_x,wormhole.phy_position_y)
	var temp_dist = point_distance(phy_position_x,phy_position_y,wormhole.phy_position_x,wormhole.phy_position_y)
	var step_coefficient = 0.04
	var step_coefficient_side = 0.09

	phy_position_x = phy_position_x + lengthdir_x(temp_dist * step_coefficient, temp_dir) + lengthdir_x(temp_dist * step_coefficient_side, temp_dir -90)
	phy_position_y = phy_position_y + lengthdir_y(temp_dist * step_coefficient, temp_dir) + lengthdir_y(temp_dist * step_coefficient_side, temp_dir -90)
	phy_angular_velocity = ship_rotation_speed
	}
if draw_scale < 0
	draw_scale = 0

depth = -round(100-100*draw_scale)

//

depth = 10 - (draw_scale * 10)

