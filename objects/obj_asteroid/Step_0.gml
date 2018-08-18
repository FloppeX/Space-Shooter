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
	boom = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	boom.radius = 60
	boom.damage = 0
	
	if pickup_object_number > 0
		for(var i = pickup_object_number; i > 0; i -= 1){
			pickup_object = instance_create_depth(0,0,-10,pickup_object_type);
			temp_distance = irandom(30)
			temp_speed_modifier = 0.4
			pickup_object.phy_position_x = phy_position_x+irandom(temp_distance)-0.5*temp_distance
			pickup_object.phy_position_y = phy_position_y+irandom(temp_distance)-0.5*temp_distance
			pickup_object.phy_speed_x = phy_speed_x * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
			pickup_object.phy_speed_y = phy_speed_y * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
			}
	instance_destroy();
	exit;
	}
	
if phy_speed > max_speed
	phy_linear_damping = 0.2
else 
	phy_linear_damping = 0
	
phy_angular_velocity = clamp(phy_angular_velocity,-max_rotation_speed,max_rotation_speed)

// Find mirror positions

scr_find_mirror_positions();

scr_wrap_room();