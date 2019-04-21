// Control view

if instance_exists(obj_enemy_ship_new){
	number_of_ships = instance_number(obj_enemy_ship_new)
	if ship_to_follow == noone
		ship_to_follow = instance_find(obj_enemy_ship_new,number_of_ships-1)
	
	if gamepad_button_check_pressed(0,gp_padr)
		ship_to_follow = instance_find(obj_enemy_ship_new,irandom(number_of_ships-1))
	
	if ship_to_follow != noone{
		with(view_object){
			if instance_exists(other.ship_to_follow){
				temp_distance = point_distance(phy_position_x,phy_position_y,other.ship_to_follow.phy_com_x,other.ship_to_follow.phy_com_y)
				temp_direction = scr_wrap_direction_to_point(phy_position_x,phy_position_y,other.ship_to_follow.phy_com_x,other.ship_to_follow.phy_com_y)
					{
					phy_position_x = phy_position_x + lengthdir_x(0.05 * temp_distance,temp_direction)
					phy_position_y = phy_position_y + lengthdir_y(0.05 * temp_distance,temp_direction)
					phy_speed_x = other.ship_to_follow.phy_speed_x
					phy_speed_y = other.ship_to_follow.phy_speed_y
					}
				/*
				phy_position_x = other.ship_to_follow.phy_com_x
				phy_position_y = other.ship_to_follow.phy_com_y
				phy_speed_x = other.ship_to_follow.phy_speed_x
				phy_speed_y = other.ship_to_follow.phy_speed_y
				*/
				}
			}
		}
	}
/*	
cam = camera_get_active()

camera_set_view_pos(cam,view_object.phy_position_x -0.5*camera_get_view_width(cam),view_object.phy_position_y-0.5*camera_get_view_height(cam))
