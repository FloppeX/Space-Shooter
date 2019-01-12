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
	
	// Create credits after an enemy dies

	var temp_angle_offset = 360/pickup_objects
	for(var i = 0; i < pickup_objects; i+=1;){
		tempdir = random(360) + i * temp_angle_offset
		tempdist = random(30) + 30
		pickup_object = instance_create_depth(phy_position_x,phy_position_y,-10,pickup_object_type);
		pickup_object.phy_position_x = phy_position_x+lengthdir_x(tempdist,tempdir)
		pickup_object.phy_position_y = phy_position_y+lengthdir_y(tempdist,tempdir)
		pickup_object.phy_speed_x = phy_speed_x
		pickup_object.phy_speed_y = phy_speed_y
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