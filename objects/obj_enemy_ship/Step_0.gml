
// Disabled?
disabled_timer -= 1;
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false

//Health
if obj_health <= 0{
	phy_active = false
	scr_explode_object_new();
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
		with(ship_modules[i])
			instance_destroy();
	instance_destroy();
	exit;
	}

// AI
	
// Set acceleration (may be changed later by ai behavior

target_speed = max_speed

// ai_mode 1 : fly around
// ai_mode 2 : attack player



if ai_mode == 1 {
	ai_timer -= 1;
	min_standoff_distance = 500
	max_standoff_distance = 800
	target = scr_rocket_find_target_in_arc(target_object,-phy_rotation,180,seek_range)
	if target != noone{
		distance_to_target = point_distance(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
		if distance_to_target > min_standoff_distance and distance_to_target < max_standoff_distance{ //0.3 * global.play_area_width
			dir_to_target = scr_wrap_direction_to_closest_instance(target)
			if angle_difference(-phy_rotation,dir_to_target) > 0
				target_dir = scr_wrap_direction_to_closest_instance(target) + 90
			else 
				target_dir = scr_wrap_direction_to_closest_instance(target) + 90
			}
		if distance_to_target < min_standoff_distance 
			target_dir = scr_wrap_direction_to_closest_instance(target) + 180
		if distance_to_target > max_standoff_distance
			target_dir = scr_wrap_direction_to_closest_instance(target)

		if ai_timer <= 0{

			ai_timer = 120
			if irandom(2) == 0{
				ai_mode = 2
				ai_timer = 480
				}
			}
	}
	}
	
if ai_mode == 2 {

	target = scr_rocket_find_target_in_arc(target_object,-phy_rotation,180,seek_range)
	if target != noone{
		target_dir = scr_wrap_intercept_course(id,target,phy_speed + gun_bullet_speed)
		target_point_x = scr_wrap_closest_x(target);
		target_point_y = scr_wrap_closest_y(target);

		angle_diff = abs(angle_difference(-phy_rotation,target_dir));
		if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 600
			and angle_diff < 5
			shoot_1 = true
		else 
			shoot_1 = false
		if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 300 {
			ai_mode = 1
			shoot_1 = false
			}
		}
	}
	
// Avoid teammates

collision_check_distance = 100
collision_check_radius= 75
closest_teammate = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_enemy_ship,false,true) 
if closest_teammate != noone{
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_teammate.phy_position_x,closest_teammate.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+120
	else 
		target_dir = temp_direction-120
	target_speed = 0.5 * max_speed
	}
	
// Avoid obstacles


collision_check_distance = 100
collision_check_radius= 200
closest_obstacle = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_asteroid,false,true) 
if closest_obstacle != noone{
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_obstacle.phy_position_x,closest_obstacle.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+90
	else 
		target_dir = temp_direction-90
	target_speed = 1 * max_speed
	}
	
// Controls

if controls_disabled == false{
	// Turn
	angle_diff = angle_difference(-phy_rotation,target_dir);
	turn_value = clamp(angle_diff/20, -1, 1)
	phy_angular_velocity = turn_value * rotation_force;	

	// Apply thrust

	if phy_speed < target_speed 
		thrust = max_thrust
	else thrust = 0
	physics_apply_local_force(0,0, thrust,0)
	}

// Counter drift

scr_counter_lateral_drift();

// Smoke effect

if controls_disabled == false{
	offset_distance = 25

	part_type_speed(global.part_rocket_smoke,1,1,0,0);  
	temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	part_type_direction(global.part_rocket_smoke,temp_dir+180,temp_dir+180,0,0);
	part_type_orientation(global.part_rocket_smoke,temp_dir,temp_dir,0,0,0)
	part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);
	part_particles_create(global.part_system_below, mirror_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);
	part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), mirror_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);
	}
	
// Modules

// First reset the variables for each module
for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	with (ship_modules[i])
		scr_reset_module_variables();

// Then apply all the modifiers that each module has
for(var i = 0; i < array_length_1d(ship_modules); i+=1;){
	with (ship_modules[i]){
		for(var h = 0; h < array_length_1d(modifiers); h+=1;)
			if modifiers[h] != noone
				script_execute(modifiers[h])
		}
	}
	
// Then calculate new values for the variables that each module has

for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	with (ship_modules[i])
		scr_calculate_module_variables();
	
// Check if they are activated

for(var i = 0; i < array_length_1d(ship_modules); i+=1;){
	if shoot_1 and controls_disabled == false
		ship_modules[i].activated = true
	else
		ship_modules[i].activated = false
	}

	
// Energy

if energy < max_energy
	energy += energy_increase
if energy > max_energy
	energy = max_energy

// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room();

