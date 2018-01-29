// Disabled?
disabled_timer -= 1;
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

if controls_disabled == false{
	gamepad_set_axis_deadzone(0, 0.1);

	rotation_value = gamepad_axis_value(0,gp_axislh);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2
		target_rotation = point_direction(0,0, gamepad_axis_value(0,gp_axislh), gamepad_axis_value(0,gp_axislv))
	
	gamepad_set_axis_deadzone(0, 0);

	add_thrust = gamepad_button_value(0, gp_shoulderrb)

	if gamepad_button_check(0,gp_face1)
		gamepad_button[1] = true
	
	if gamepad_button_check(0,gp_face2)
		gamepad_button[2] = true
	
	if gamepad_button_check(0,gp_face3)
		gamepad_button[3] = true
		
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true

	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
	
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
}

if keyboard_check(vk_right){
		room_goto(rm_shop)
	}
	
if keyboard_check(vk_left){
		room_goto(rm_space)
	}
	
if keyboard_check_pressed(vk_up){
		map_scale += 0.1
	}
if keyboard_check_pressed(vk_down){
		map_scale -= 0.1
	}

// Turn
control_mode = 2

phy_rotation = (phy_rotation + 360) mod 360
if control_mode == 1
	phy_angular_velocity = rotation_value * rotation_force;
if control_mode == 2{
	
	rotation_value = angle_difference(-phy_rotation,target_rotation)/10
	rotation_value = clamp(rotation_value,-1,1)
	rotation_value = rotation_value * left_stick_value
	phy_angular_velocity = rotation_value * rotation_force
	}
	
// Moving - activate the engines

if phy_speed > max_speed
	add_thrust = 0
	
for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	if ship_modules[i].object_index == obj_module_engine
		with(ship_modules[i])
			add_thrust = other.add_thrust
	
// Stop ship from skidding
if add_thrust
	scr_counter_lateral_drift();

// Health

if obj_health <= 0{
	scr_explode_object_new();
	explosion_sound = audio_play_sound_on(ship_audio_emitter,explosion_sound,0,1)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
		with(ship_modules[i])
			instance_destroy();
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	instance_destroy();
	}

// Set wrap boundaries for other objects

global.wrap_border_left = phy_position_x - 0.5 * global.play_area_width;
global.wrap_border_right = phy_position_x + 0.5 * global.play_area_width;
global.wrap_border_top = phy_position_y - 0.5 * global.play_area_height;
global.wrap_border_bottom = phy_position_y + 0.5 * global.play_area_height;

// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room_player();

// Energy

if energy < max_energy
	energy += energy_increase
if energy > max_energy
	energy = max_energy
	
// Apply modifiers for modules!

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
		
// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)

audio_listener_position(phy_position_x,phy_position_y,global.zoom)