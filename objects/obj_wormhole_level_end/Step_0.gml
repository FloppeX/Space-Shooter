event_inherited();
	
warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)
	if warping_ship != noone
		with(warping_ship){
			disabled_timer = 10
			if draw_scale > 0{
				temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
				temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
				draw_scale -= 0.01 // temp_dist/(0.5 * sprite_width)
				draw_scale = clamp(draw_scale,0,1)
				//phy_linear_damping = 4 * temp_dist/(0.5 * sprite_width)
				temp_speed = 3 * temp_dist/(0.5 * other.sprite_width)
				phy_speed_x = lengthdir_x(temp_speed,temp_dir-90) + lengthdir_x(temp_speed,temp_dir)
				phy_speed_y = lengthdir_y(temp_speed,temp_dir-90) + lengthdir_y(temp_speed,temp_dir)
				//physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(force,temp_dir),lengthdir_y(force,temp_dir))
				phy_angular_velocity = 800
				}
			if draw_scale < 0.05{
				visible = false
				other.done_warping = true
				//phy_linear_damping = 0.4
				}
			
			}
			
if death_timer <= 0{
	with(global.player){
		draw_scale = 1
		visible = true
		}
	room_goto (next_level)
	
	}