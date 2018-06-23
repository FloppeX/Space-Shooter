// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base * max_speed_multiplier) + max_speed_bonus
rotation_speed = (rotation_speed_base * rotation_speed_multiplier) + rotation_speed_bonus
max_health = (max_health_base * max_health_multiplier) + max_health_bonus
max_energy = (max_energy_base * max_energy_multiplier) + max_energy_bonus
energy_increase = (energy_increase_base * energy_increase_multiplier) + energy_increase_bonus

// Add other variables too!

// Disabled?
disabled_timer -= 1;
if disabled_timer < 0 
	disabled_timer = 0
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false

// Gamepad controls
// Reset them first

rotation_value = 0
left_stick_value = 0
add_thrust = 0
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false

if controls_disabled == false{
	gamepad_set_axis_deadzone(0, 0.1);
	rotation_value = gamepad_axis_value(0,gp_axislh);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2
		target_rotation = point_direction(0,0, gamepad_axis_value(0,gp_axislh), gamepad_axis_value(0,gp_axislv))
	gamepad_set_axis_deadzone(0, 0);
	
	if gamepad_button_check(0,gp_shoulderl){
		target_rotation = -phy_rotation+90
		left_stick_value = 1
		}
		
	if gamepad_button_check(0,gp_shoulderr){
		target_rotation = -phy_rotation-90
		left_stick_value = 1
		}
		
	add_thrust = gamepad_button_value(0, gp_shoulderrb)

	if gamepad_button_check(0,gp_face1)
		gamepad_button[1] = true
	
	if gamepad_button_check(0,gp_face2)
		gamepad_button[2] = true
	
	if gamepad_button_check(0,gp_face3)
		gamepad_button[3] = true
		
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
		
	if gamepad_button_value(0, gp_shoulderlb) > 0
		gamepad_button[5] = true
}

if keyboard_check(vk_right)/*{
	with(global.player){
		phy_position_x = 0.5 * room_width
		phy_position_y = 0.5 * room_height
		phy_speed_x = 0
		phy_speed_y = 0
		phy_angular_velocity = 0
		phy_rotation = -90		
		draw_scale = 1
		visible = true
		}*/
	room_goto (rm_shop)

	
if keyboard_check(vk_left){
		room_goto(rm_space)
	}
	
if keyboard_check_pressed(vk_up){
		draw_scale += 0.1
	}
if keyboard_check_pressed(vk_down){
		draw_scale -= 0.1
	}
	
// Close-up view

if gamepad_button_check_pressed(0,gp_select)
	if !close_up_view
		close_up_view = true
	else 
		close_up_view = false
		
if close_up_view
	zoom = 200

// Turn

if controls_disabled == false{
	control_mode = 1

	phy_rotation = (phy_rotation + 360) mod 360
	if control_mode == 1{
		if rotation_value < 0 and phy_angular_velocity > rotation_speed * rotation_value 
			physics_apply_angular_impulse(10 * rotation_value)
		if rotation_value > 0 and phy_angular_velocity < rotation_speed * rotation_value
			physics_apply_angular_impulse(10 * rotation_value)
		}
		//phy_angular_velocity = rotation_value * rotation_speed // phy_angular_velocity = rotation_value * rotation_speed;
	if control_mode == 2{
	
		rotation_value = angle_difference(-phy_rotation,target_rotation)/10
		rotation_value = clamp(rotation_value,-1,1)
		rotation_value = rotation_value * left_stick_value
		phy_angular_velocity = rotation_value * rotation_speed // physics_apply_angular_impulse(rotation_value * rotation_speed) //
		}
	}
	
// Moving - activate the engines

/*
if phy_speed > max_speed
	add_thrust = 0
*/

/*
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	module_holders[i].add_thrust = add_thrust
*/	
	
// Stop ship from skidding
if add_thrust
	scr_counter_lateral_drift();

// Health

if obj_health <= 0{
	scr_explode_object_new();
	phy_active = false
	for(var i = 0; i < array_length_1d(module_holders); i+=1;)
		with(module_holders[i]){
			with(module)
				instance_destroy();
			instance_destroy();
			}
	audio_play_sound_at(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	instance_destroy();
	exit;
	}

// Set wrap boundaries for other objects
/*
global.wrap_border_left = phy_position_x - 0.5 * global.play_area_width;
global.wrap_border_right = phy_position_x + 0.5 * global.play_area_width;
global.wrap_border_top = phy_position_y - 0.5 * global.play_area_height;
global.wrap_border_bottom = phy_position_y + 0.5 * global.play_area_height;
*/
// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room();//scr_wrap_room_player();

// Energy, health, particles

if energy < max_energy
	energy += energy_increase
	
if energy > max_energy
	energy = max_energy
	
if obj_health > max_health
	obj_health = max_health
	
if particles > max_particles
	particles = max_particles	
	
// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)

audio_listener_position(phy_position_x,phy_position_y,0.25*global.zoom)

// Send control inputs to module holders

for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	for(var h = 0; h < array_length_1d(gamepad_button); h+=1;)
		module_holders[i].gamepad_button[h] = gamepad_button[h]
	module_holders[i].add_thrust = add_thrust
	}