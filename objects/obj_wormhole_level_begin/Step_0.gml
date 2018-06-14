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
			disabled_timer = 2
			temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			temp_speed = -3 * temp_dist/(0.5 * other.sprite_width)
			phy_speed_x = 0//lengthdir_x(temp_speed,temp_dir-90) + lengthdir_x(temp_speed,temp_dir)
			phy_speed_y = 0//lengthdir_y(temp_speed,temp_dir-90) + lengthdir_y(temp_speed,temp_dir)
			phy_angular_velocity = 600
			if draw_scale > 0.6 and angle_difference(-phy_rotation,90) < 5
				phy_angular_velocity = 0
			if draw_scale < 1{
				draw_scale += 0.01 //temp_dist/(0.5 * sprite_width)
				draw_scale = clamp(draw_scale,0,1)
				}
			}
		}
if obj_player.draw_scale > 0.9 and obj_player.phy_rotation = 0
	obj_player.phy_angular_velocity = 0
if !done_warping{
	global.zoom = global.min_zoom + obj_player.draw_scale * 200
	if obj_player.draw_scale == 1
		done_warping = true
	}
