// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base * max_speed_multiplier) + max_speed_bonus
rotation_speed = (rotation_speed_base * rotation_speed_multiplier) + rotation_speed_bonus
max_health = (max_health_base * max_health_multiplier) + max_health_bonus
max_energy = (max_energy_base * max_energy_multiplier) + max_energy_bonus
energy_increase = (energy_increase_base * energy_increase_multiplier) + energy_increase_bonus

// Disabled?

disabled_timer -= 1;

if disabled_timer < 0 
	disabled_timer = 0
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false

ai_disabled_timer -= 1;
if ai_disabled_timer < 0 
	ai_disabled_timer = 0
	
	
// Hit invulnerability

if hit_invulnerable_timer > 0
	hit_invulnerable_timer -= 1
	
//Health

if obj_health <= 0{
	phy_active = false
	audio_stop_sound(engine_noise)
	
	scr_explode_object_new_new();
	for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
		if scr_exists(ship_segment[i].module)
			with(ship_segment[i].module)
				instance_destroy() 
		with(ship_segment[i])
				instance_destroy()
		}
	audio_emitter_free(ship_audio_emitter)

	
	scr_create_pickups_after_death();
	scr_create_explosion_medium(phy_position_x,phy_position_y)
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
		target = scr_rocket_find_target_in_arc(target_objects[0],-phy_rotation,targeting_arc,seek_range)
		if target == noone
			target = scr_rocket_find_target_in_arc(target_objects[1],-phy_rotation,targeting_arc,seek_range)
		}

if ai_mode == 1 {
	ai_timer -= 1;
	min_standoff_distance = 0 //100
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

	if scr_timer(10){
		if scr_exists(target){
			target_point_x = scr_wrap_closest_x(target);
			target_point_y = scr_wrap_closest_y(target);
			target_distance = scr_wrap_distance_to_point(phy_position_x,phy_position_y,target_point_x,target_point_y)
			target_dir = scr_wrap_intercept_course(id,target,phy_speed + gun_bullet_speed)
			if abs(angle_difference(-phy_rotation,target_dir)) > 45
				target_speed = 0.2 * max_speed
			if abs(angle_difference(-phy_rotation,target_dir)) > 90
				target_speed = 0
			if target_dir == -1
				target_dir = point_direction(phy_position_x,phy_position_y,target_point_x,target_point_y)

			// find weapon to attack with
			if scr_timer(240){
				var temp_angle = angle_difference(-phy_rotation,target_dir)
				for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
					if scr_exists(ship_segment[i].module)
						if object_is_ancestor(ship_segment[i].module, obj_module_gun){
							module_angle = angle_difference(-ship_segment[i].module.phy_rotation,target_dir)
							if module_angle < temp_angle{
								temp_angle = module_angle
								target_dir = target_dir + ship_segment[i].module.offset_angle
								}
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
			ai_timer = 300
			}
	}



// Shooting
var target_arc = 30 //30
for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
		if ship_segment[i].module != noone
			if object_is_ancestor(ship_segment[i].module.object_index, obj_module_gun)
				if scr_timer(20) and !ship_segment[i].module.activation_timer and ship_segment[i].module.ready_to_shoot and !controls_disabled and !ai_disabled_timer{
					var temp_target = scr_rocket_find_target_in_arc(target_objects[0],-ship_segment[i].module.phy_rotation,target_arc,ship_segment[i].module.bullet_range * 1.5)
					if temp_target == noone 
						temp_target = scr_rocket_find_target_in_arc(target_objects[1],-ship_segment[i].module.phy_rotation,target_arc,ship_segment[i].module.bullet_range * 1.5)
					if temp_target != noone 
						ship_segment[i].module.activation_timer = 30
					}		

// Avoid teammates

collision_check_distance = 140
collision_check_radius= 75
if scr_timer(10)
	closest_teammate = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_enemy_ship_new,false,true) 
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
if scr_timer(30)
	closest_obstacle = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_asteroid,false,true) 
if scr_exists(closest_obstacle){
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_obstacle.phy_position_x,closest_obstacle.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+90
	else 
		target_dir = temp_direction-90
	target_speed = 0.5 * max_speed
	}
	
}
// Controls

if controls_disabled == false{
	// Turn
	angle_diff = angle_difference(-phy_rotation,target_dir);
	
	rotation_value = clamp(angle_diff/20, -1, 1)
	
	rotation_value = (1-sqr(1-abs(rotation_value))) * sign(rotation_value)

	if abs(phy_angular_velocity) < rotation_speed //* abs(rotation_value)
		physics_apply_torque(rotation_force * rotation_value)

	// Apply thrust
	
	if phy_speed < target_speed
		add_thrust = 1
	else add_thrust = 0
	
	}
else add_thrust = 0

// Counter drift
if add_thrust and !controls_disabled
	scr_counter_lateral_drift();
		
// Energy

if energy < max_energy
	energy += energy_increase
if energy > max_energy
	energy = max_energy


// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room_ship()//_test();


// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)
//audio_emitter_velocity(ship_audio_emitter,phy_speed_x,phy_speed_y,0)

// TEST

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
			ship_segment[i].owner = id
			ship_segment[i].persistent = false
			ship_segment[i].visible = true
			if ship_segment[i].module != noone{
				ship_segment[i].module.owner = id
				ship_segment[i].module.persistent = false
				ship_segment[i].module.visible = true
				}
			}