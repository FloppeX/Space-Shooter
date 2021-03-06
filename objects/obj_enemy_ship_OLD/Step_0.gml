// Calculate variables that may be changed by modifiers
// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base * max_speed_multiplier) + max_speed_bonus
rotation_speed = (rotation_speed_base * rotation_speed_multiplier) + rotation_speed_bonus
max_health = (max_health_base * max_health_multiplier) + max_health_bonus
max_energy = (max_energy_base * max_energy_multiplier) + max_energy_bonus
energy_increase = (energy_increase_base * energy_increase_multiplier) + energy_increase_bonus



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

ai_disabled_timer -= 1;
//Health

if obj_health <= 0{
	phy_active = false
	audio_stop_sound(engine_noise)
	
	scr_explode_object_new();
	for(var i = 0; i < array_height_2d(modules); i+=1;)
		if scr_exists(modules[i,0]){
			with(modules[i,0])
				instance_destroy();
			with(modules[i,1])	
				instance_destroy();
			}
	audio_emitter_free(ship_audio_emitter)

	
	scr_create_pickups_after_death();
	scr_create_explosion_medium(phy_position_x,phy_position_y)
	//instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	if the_one_that_killed_me == obj_player{
		obj_player.enemies_killed += 1
		global.total_kills += 1
		}
	
	instance_destroy();
	exit;
	}

// Health bar - drawn in draw step

if obj_health < old_obj_health
	health_bar_timer = 180
	
if health_bar_timer > 0{
	health_bar_x = phy_position_x
	health_bar_y = phy_position_y - 80
	health_bar_height = 8
	health_bar_width = 36
	
	health_bar_timer -= 1
	}
old_obj_health = obj_health



// AI
	
// Set acceleration (may be changed later by ai behavior

target_speed = max_speed

// ai_mode 1 : fly around
// ai_mode 2 : attack player

if ai_disabled_timer <= 0{ // set this to > 0 to control the enemy from another object

// Find target
	if scr_timer(30){
		target = noone
		for(var i = 0; i < array_length_1d(target_objects); i+=1;)
			if target == noone
				target = scr_rocket_find_target_in_arc(target_objects[i],-phy_rotation,360,seek_range)
		}

if ai_mode == 1 {
	ai_timer -= 1;
	min_standoff_distance = 100
	max_standoff_distance = 400
	
	if scr_timer(20)
		if scr_exists(target) {
			distance_to_target = point_distance(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
			if distance_to_target > min_standoff_distance and distance_to_target < max_standoff_distance{ //0.3 * global.play_area_width
				dir_to_target = scr_wrap_direction_to_closest_instance(target)
				if angle_difference(-phy_rotation,dir_to_target) > 0
					target_dir = scr_wrap_direction_to_closest_instance(target) + 90
				else 
					target_dir = scr_wrap_direction_to_closest_instance(target) - 90
				}
			if distance_to_target < min_standoff_distance 
				target_dir = scr_wrap_direction_to_closest_instance(target) + 180
			if distance_to_target > max_standoff_distance
				target_dir = scr_wrap_direction_to_closest_instance(target)

			if ai_timer <= 0{

				ai_timer = 300
				if irandom(2) == 0{
					ai_mode = 2
					attack_timer = attack_duration
					}
				}
			}
	}
	
if ai_mode == 2 {
	
	attack_timer -= 1;
	//if scr_timer(30)
	//	target = scr_rocket_find_target_in_arc(target_object,-phy_rotation,180,seek_range)
	if scr_timer(10){
		if scr_exists(target){
			target_point_x = scr_wrap_closest_x(target);
			target_point_y = scr_wrap_closest_y(target);
			target_distance = scr_wrap_distance_to_point(phy_position_x,phy_position_y,target_point_x,target_point_y)
			target_dir = scr_wrap_intercept_course(id,target,phy_speed + gun_bullet_speed)
			if target_dir == -1
				target_dir = point_direction(phy_position_x,phy_position_y,target_point_x,target_point_y)

			// find weapon to attack with
			var temp_distance = target_distance
			var temp_angle = angle_difference(-phy_rotation,target_dir)
			var selected_weapon = noone
			for(var i = 0; i < array_height_2d(modules); i+=1;)
				if scr_exists(modules[i,0]){
					module_angle = angle_difference(-modules[i,0].phy_rotation,target_dir)
					if module_angle < temp_angle{
						temp_angle = module_angle
						target_dir = target_dir + modules[i,0].offset_angle
						}
					}
			// Check if its time to abort attack
			if attack_timer <= 0
				abort_attack = true
			}
		//else shoot = false
		}
	
	if abort_attack{
			ai_mode = 1
			//shoot = false
			abort_attack = false
			ai_timer = 120
			}
	}



// Shooting

for(var i = 0; i < array_height_2d(modules); i+=1;){
		var temp_module = modules[i,0]
		if scr_exists(temp_module) and object_is_ancestor(temp_module.object_index, obj_module_gun)
			if temp_module.ready_to_shoot and !controls_disabled and !ai_disabled_timer 
				{
					var temp_target
					temp_target = scr_rocket_find_target_in_arc(target_objects[0],-temp_module.phy_rotation,30,temp_module.bullet_range * 1.5)
					if temp_target == noone 
						temp_target = scr_rocket_find_target_in_arc(target_objects[1],-temp_module.phy_rotation,30,temp_module.bullet_range * 1.5)
					if temp_target != noone 
						temp_module.activation_timer = 30
				}		
			
				/*for(var i = 0; i < array_length_1d(target_objects); i+=1;){
					var temp_target = scr_rocket_find_target_in_arc(target_objects[i],-temp_module.phy_rotation,30,temp_module.bullet_range * 1.5)
					if temp_target != noone 
						temp_module.activation_timer = 30
				}	*/	
	}



// Avoid teammates

collision_check_distance = 140
collision_check_radius= 75
if scr_timer(10)
	closest_teammate = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_enemy_ship,false,true) 
if scr_exists(closest_teammate){
	var temp_direction = point_direction(phy_position_x,phy_position_y,closest_teammate.phy_position_x,closest_teammate.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+120
	else 
		target_dir = temp_direction-120
	target_speed = 0.5 * max_speed
	}
	
// Avoid obstacles


var collision_check_distance = 140
var collision_check_radius= 200
if scr_timer(10)
	closest_obstacle = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_asteroid,false,true) 
if scr_exists(closest_obstacle){
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_obstacle.phy_position_x,closest_obstacle.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+90
	else 
		target_dir = temp_direction-90
	target_speed = 1 * max_speed
	}
	
}
// Controls

if controls_disabled == false{
	// Turn
	angle_diff = angle_difference(-phy_rotation,target_dir);
	
	rotation_value = clamp(angle_diff/20, -1, 1)
	if rotation_value < 0 and phy_angular_velocity > max_rotation_speed * rotation_value 
			phy_angular_velocity -= 10//physics_apply_angular_impulse(4 * rotation_value)
	if rotation_value > 0 and phy_angular_velocity < max_rotation_speed * rotation_value
			phy_angular_velocity += 10//physics_apply_angular_impulse(4 * rotation_value)
			
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
else add_thrust = 0

// Counter drift
if add_thrust and !controls_disabled
	scr_counter_lateral_drift();

// Upidate positions and settings for module holders

for(var i = 0; i < array_height_2d(modules); i+=1;){
		modules[i,1].x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,1].y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
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

// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)
//audio_emitter_velocity(ship_audio_emitter,phy_speed_x,phy_speed_y,0)

