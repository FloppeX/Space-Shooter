event_inherited();

warp_start_timer -= 1;
	
warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)
	if warping_ship != noone{
		if warp_start_timer <= 0
			with(warping_ship)
				visible = true
		else
			with(warping_ship)
				visible = false
		with(warping_ship){
			disabled_timer = 10
			temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			temp_speed = -3 * temp_dist/(0.5 * other.sprite_width)
			phy_speed_x = lengthdir_x(temp_speed,temp_dir-90) + lengthdir_x(temp_speed,temp_dir)
			phy_speed_y = lengthdir_y(temp_speed,temp_dir-90) + lengthdir_y(temp_speed,temp_dir)
			phy_angular_velocity = 800
			if draw_scale < 1{
				draw_scale += 0.01 //temp_dist/(0.5 * sprite_width)
				draw_scale = clamp(draw_scale,0,1)
				}
			}
		}
	else {
		done_warping = true
		if instance_exists(obj_player)
			with (obj_player)
				draw_scale = 1
		}