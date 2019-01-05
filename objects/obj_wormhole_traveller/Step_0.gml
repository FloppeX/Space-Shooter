wormhole = instance_nearest(phy_position_x,phy_position_y,obj_wormhole)

if wormhole == noone
	instance_destroy();
	

// TEST!
wormhole = instance_nearest(phy_position_x,phy_position_y,obj_wormhole)
if scr_exists(wormhole){

	var ship_rotation_speed = 400
	var temp_dir = point_direction(phy_position_x,phy_position_y,wormhole.phy_position_x,wormhole.phy_position_y)
	var temp_dist = point_distance(phy_position_x,phy_position_y,wormhole.phy_position_x,wormhole.phy_position_y)
	// draw_scale -= 0.01
	draw_scale = clamp(draw_scale,0,1)
	var temp_speed = 10 * (temp_dist/90) //temp_dist/(max(15,0.3 * sprite_width))
	
	physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(force*(temp_dist/90),temp_dir),lengthdir_y(force*(temp_dist/90),temp_dir))
	//phy_speed_x = lengthdir_x(temp_speed,temp_dir)
	//phy_speed_y = lengthdir_y(temp_speed,temp_dir)
	phy_angular_velocity = ship_rotation_speed
	}
if draw_scale <= 0
	instance_destroy();

depth = -round(100-100*draw_scale)