// Calculate variables that may be changed by modifiers
// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base + max_speed_bonus) * max_speed_multiplier
rotation_speed = (rotation_speed_base + rotation_speed_bonus) * rotation_speed_multiplier
drift_resistance = (drift_resistance_base + drift_resistance_bonus) * drift_resistance_multiplier
max_health = (max_health_base + max_health_bonus) * max_health_multiplier
max_energy = (max_energy_base + max_energy_bonus) * max_energy_multiplier
energy_increase = (energy_increase_base + energy_increase_bonus) * energy_increase_multiplier

// Disabled?

disabled_timer -= 1;
if disabled_timer < 0 
	disabled_timer = 0
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false

// Hit invulnerability

if hit_invulnerable_timer > 0
	hit_invulnerable_timer -= 1

// Gamepad controls

if controls_disabled == false{
	gamepad_set_axis_deadzone(0, 0.1);
	rotation_value = gamepad_axis_value(0,gp_axislh);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2
		target_rotation = point_direction(0,0, gamepad_axis_value(0,gp_axislh), gamepad_axis_value(0,gp_axislv))
	gamepad_set_axis_deadzone(0, 0);
	
	rotation_value = sign(rotation_value) * left_stick_value
	
	if gamepad_button_check(0,gp_shoulderl){
		target_rotation = -phy_rotation+90
		left_stick_value = 1
		}
		
	if gamepad_button_check(0,gp_shoulderr){
		target_rotation = -phy_rotation-90
		left_stick_value = 1
		}
		
	add_thrust = gamepad_button_value(0, gp_shoulderrb)

	use_active_item = gamepad_button_value(0, gp_shoulderlb)

	if gamepad_button_check(0,gp_face1)
		gamepad_button[1] = true
	else gamepad_button[1] = false
	
	if gamepad_button_check(0,gp_face2)
		gamepad_button[2] = true
	else gamepad_button[2] = false
	
	if gamepad_button_check(0,gp_face3)
		gamepad_button[3] = true
	else gamepad_button[3] = false
		
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
	else gamepad_button[4] = false
		
	if gamepad_button_check_pressed(0,gp_shoulderl)
		select_next_active_item = true
	else select_next_active_item = false
		
	// Zoom

if gamepad_button_check(0,gp_padu)
		global.zoom = global.zoom - 20

if gamepad_button_check(0,gp_padd)
		global.zoom = global.zoom + 20
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

	}

if keyboard_check(vk_right){
	shop = room_duplicate(rm_shop)
	room_goto (shop)
	}

	
if keyboard_check(vk_left){
	space = room_duplicate(rm_space)
	room_goto (space)
	}
	
if keyboard_check_pressed(vk_space){
		credits += 4
	}
	
if keyboard_check_pressed(vk_control){
		scr_add_ship_segment(id,24,obj_ship_segment_player)
	}
	
if keyboard_check_pressed(ord("Q")){
		scr_ship_update_segments(id,segment_distance)
	}
	
if keyboard_check_pressed(ord("1")){
		scr_add_ship_segment_test_1(id,24,obj_ship_segment_player)
	}

if keyboard_check_pressed(ord("2")){
		scr_add_ship_segment_test_2(id,24,obj_ship_segment_player)
	}
	
if keyboard_check_pressed(ord("3")){
		scr_add_ship_segment_test_3(id,24,obj_ship_segment_player)
	}
	
// Turn

if controls_disabled == false{
			
	//rotation_value = (1-sqr(1-abs(rotation_value))) * sign(rotation_value)
	
	if abs(phy_angular_velocity) < rotation_speed //* abs(rotation_value)
		physics_apply_torque(rotation_force * rotation_value)
	//else
	//	physics_apply_torque(rotation_force * -sign(phy_angular_velocity))
}
	
// Stop ship from skidding
if add_thrust
	scr_counter_lateral_drift();
	
// dont move faster than max speed
if phy_speed > max_speed{
	var friction_coeff = 15
	//var temp_dir = point_direction(0,0,phy_speed_x,phy_speed_y)
	physics_apply_force(phy_position_x,phy_position_y,friction_coeff * -phy_speed_x,friction_coeff * -phy_speed_y)
	}
	
// Update modules and activate them!

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i].module){
		if gamepad_button[ship_segment[i].module.activation_button] == true and ship_segment[i].module.activation_button != 0
			ship_segment[i].module.activated = true
		}
	

// Health

health_difference = obj_health_old - obj_health
if health_difference > 0{
	global.screen_shake_intensity = health_difference
	global.screen_shake_duration = health_difference 
	}
	
	
if obj_health <= 0 and destroyed == false{
	scr_explode_object_new_new();
	//phy_active = false
	for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
		if scr_exists(ship_segment[i].module)
			with(ship_segment[i].module)
				instance_destroy() 
		with(ship_segment[i])
				instance_destroy()
		}
	ship_segment = noone
	audio_play_sound_at(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)
	boom = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	boom.radius = 300
	boom.damage = 50
	
	scr_write_stats_to_file()
	destroyed = true
	visible = false
	//instance_destroy();
	exit;
	}	
		

// Energy, health, particles

if energy_disabled
	energy_disabled_timer -=1

if round(energy) <= 0{
	energy_disabled = true
	energy_disabled_timer -= 1
	}
	
if energy_disabled_timer <= 0{
	energy_disabled = false
	energy_disabled_timer = energy_disabled_duration
	}
	
if !energy_disabled
	energy += energy_increase
	
energy = clamp(energy,0,max_energy)

obj_health = clamp(obj_health,0,max_health)
obj_health_old = obj_health
	
particles = clamp(particles,0,max_particles)	

// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room_ship();//scr_wrap_room_ship();

// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)
var listener_height = 0.25*global.zoom
listener_height = clamp(listener_height,0,1000)
audio_listener_position(phy_position_x,phy_position_y,listener_height)

// Credits
if obj_health > 0{
	var pickup_type = obj_pickup_credit

	if instance_number(pickup_type) > 0
		for(var i = 0; i < instance_number(pickup_type); i+=1;)
			with (instance_find(pickup_type,i)){
				var temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
				var temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
				if temp_dist <= other.pickup_seek_range
					physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir),lengthdir_y(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir))
			}
		
	var pickup_type = obj_pickup_health
	if obj_health < max_health
		if instance_number(pickup_type) > 0
			for(var i = 0; i < instance_number(pickup_type); i+=1;)
				with (instance_find(pickup_type,i)){
					var temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
					var temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
					if temp_dist <= other.pickup_seek_range
						physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir),lengthdir_y(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir))
				}
		
	var pickup_type = obj_pickup_particles
	if particles < max_particles
		if instance_number(pickup_type) > 0
			for(var i = 0; i < instance_number(pickup_type); i+=1;)
				with (instance_find(pickup_type,i)){
					var temp_dist = point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
					var temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
					if temp_dist <= other.pickup_seek_range
						physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir),lengthdir_y(other.pickup_pull_force*temp_dist/other.pickup_seek_range,temp_dir))
				}
	}
			
if credits > credits_old
credits_gained += (credits - credits_old)
global.total_credits += (credits - credits_old)
credits_old = credits

// MAP UI

if scr_timer(40)
	scr_populate_map_object_array(obj_asteroid,spr_map_marker_asteroid)

// Update costs

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i].module){
		ship_segment[i].module.cost = 0
		}
		
// TEST

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
			ship_segment[i].owner = id
			ship_segment[i].persistent = true
			if scr_exists(ship_segment[i].module){
				ship_segment[i].module.owner = id
				ship_segment[i].module.persistent = true
				ship_segment[i].module.cost = 0
				}
			}