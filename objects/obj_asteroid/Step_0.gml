if obj_health <= 0
	{
	if child_object != noone{	
		travel_direction = point_direction(0, 0, phy_speed_x, phy_speed_y)
		new_asteroid_1 = instance_create_depth(phy_position_x,phy_position_y,0,child_object)
		new_asteroid_1.phy_speed_x = lengthdir_x(phy_speed+1,travel_direction+45)
		new_asteroid_1.phy_speed_y = lengthdir_y(phy_speed+1,travel_direction+45)
		new_asteroid_2 = instance_create_depth(phy_position_x,phy_position_y,0,child_object)
		new_asteroid_2.phy_speed_x = lengthdir_x(phy_speed+1,travel_direction-45)
		new_asteroid_2.phy_speed_y = lengthdir_y(phy_speed+1,travel_direction-45)
		}
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	instance_destroy();
	exit;
	}
	
if phy_speed > max_speed
	phy_linear_damping = 0.2
else 
	phy_linear_damping = 0
	
if phy_angular_velocity > max_rotation_speed or phy_angular_velocity < -max_rotation_speed
	phy_angular_damping = 1
else 
	phy_angular_damping = 0
	
// Find mirror positions

scr_find_mirror_positions();

scr_wrap_room();