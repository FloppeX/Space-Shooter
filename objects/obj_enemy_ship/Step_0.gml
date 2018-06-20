// Controls
// Reset them first

gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false

// Disabled?
disabled_timer -= 1;
if disabled_timer < 0 
	disabled_timer = 0
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false
//Health
if obj_health <= 0{
	phy_active = false
	scr_explode_object_new();
	audio_stop_sound(engine_noise)
	phy_active = false
	for(var i = 0; i < array_length_1d(module_holders); i+=1;)
		with(module_holders[i]){
			with(module)
				instance_destroy();
			instance_destroy();
			}
	audio_emitter_free(ship_audio_emitter)
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
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
	min_standoff_distance = 200
	max_standoff_distance = 400
	target = scr_rocket_find_target_in_arc(target_object,-phy_rotation,360,seek_range)
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
				attack_timer = attack_duration
				}
			}
	}
	}
	
if ai_mode == 2 {
	
	attack_timer -= 1;
	target = scr_rocket_find_target_in_arc(target_object,-phy_rotation,180,seek_range)
	if target != noone{
		target_dir = scr_wrap_intercept_course(id,target,phy_speed + gun_bullet_speed)
		target_point_x = scr_wrap_closest_x(target);
		target_point_y = scr_wrap_closest_y(target);

		angle_diff = abs(angle_difference(-phy_rotation,target_dir));
		shoot = false
		if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 600
			and angle_diff < 30 and !controls_disabled
			shoot = true
		if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 50
			abort_attack = true
			
		if attack_timer <= 0
			abort_attack = true
		}
	else shoot = false
	
	if abort_attack{
			ai_mode = 1
			shoot = false
			abort_attack = false
			ai_timer = 120
			}
	}
	
// Shooting

for(var i = 0; i < array_length_1d(module_holders); i+=1;){
		temp_module = module_holders[i].module
		if object_is_ancestor(temp_module.object_index, obj_module_gun){
			target = scr_rocket_find_target_in_arc(target_object,-temp_module.phy_rotation,30,temp_module.bullet_range * 1.5)
			if target == noone or controls_disabled
				temp_module.activated = false	
			else temp_module.activated = true
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
	
	rotation_value = clamp(angle_diff/20, -1, 1)
	if rotation_value < 0 and phy_angular_velocity > max_rotation_speed * rotation_value 
			physics_apply_angular_impulse(4 * rotation_value)
	if rotation_value > 0 and phy_angular_velocity < max_rotation_speed * rotation_value
			physics_apply_angular_impulse(4 * rotation_value)
			
	//phy_angular_velocity = turn_value * max_rotation_speed;	

	// Apply thrust
	
	if phy_speed < target_speed 
		add_thrust = 1
	else add_thrust = 0
	
	/*
	if phy_speed < target_speed 
		thrust = max_thrust
	else thrust = 0
	physics_apply_local_force(0,0, thrust,0)
	*/
	}

// Counter drift

scr_counter_lateral_drift();

//
/*
if shoot
	for(var i = 0; i < array_length_1d(gamepad_button); i+=1;)
		gamepad_button[i] = true
for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	for(var h = 0; h < array_length_1d(gamepad_button); h+=1;)
	module_holders[i].gamepad_button[h] = gamepad_button[h]
	}
*/
	
// Energy

if energy < max_energy
	energy += energy_increase
if energy > max_energy
	energy = max_energy

// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room();

// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)
audio_emitter_velocity(ship_audio_emitter,phy_speed_x,phy_speed_y,0)
//	engine_noise = audio_play_sound_on(ship_audio_emitter,engine_sound,1,1)