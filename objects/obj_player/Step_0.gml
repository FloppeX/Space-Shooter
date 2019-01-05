
	
#region Variables
// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base * max_speed_multiplier) + max_speed_bonus
rotation_speed = (rotation_speed_base * rotation_speed_multiplier) + rotation_speed_bonus
max_health = (max_health_base * max_health_multiplier) + max_health_bonus
max_energy = (max_energy_base * max_energy_multiplier) + max_energy_bonus
energy_increase = (energy_increase_base * energy_increase_multiplier) + energy_increase_bonus
#endregion

#region Disabled?

// Disabled?
disabled_timer -= 1;
if disabled_timer < 0 
	disabled_timer = 0
if disabled_timer > 0 
	controls_disabled = true
else controls_disabled = false
#endregion

#region Controls

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
use_active_item = false
select_next_active_item = false

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

	if gamepad_button_value(0, gp_shoulderlb)
		use_active_item = true

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
		
	if gamepad_button_check_pressed(0,gp_shoulderl)
		select_next_active_item = true
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
	
if keyboard_check_pressed(vk_up){
		rotation_speed_base += 5//draw_scale += 0.1
	}
if keyboard_check_pressed(vk_down){
		rotation_speed_base -= 5//draw_scale -= 0.1
	}
	
#endregion

// Are there any activated modules, and if so, which one is selected?
if scr_timer(30) // if no active module is selected, check for one periodically
	if selected_active_module == noone or !scr_exists(modules[selected_active_module,0]){
		selected_active_module = noone
		for(var i = 0; i < array_height_2d(modules) and selected_active_module == noone; i+=1;)
			if scr_exists(modules[i,0])
				if modules[i,0].active == true
					selected_active_module = i
			}
else
	if select_next_active_item == true{
		// Check for the next active module
		h = selected_active_module + 1
		repeat(array_height_2d(modules)-1){
			if h >= array_height_2d(modules)
				h -= array_height_2d(modules)
			if scr_exists(modules[h,0])
				if modules[h,0].active == true
					selected_active_module = h
			h += 1
			}
		}
		
		
	


#region Turning & moving
// Turn

if controls_disabled == false{
	control_mode = 1

	//phy_rotation = (phy_rotation + 360) mod 360
	if control_mode == 1{
		if rotation_value < 0 and abs(phy_angular_velocity) < rotation_speed * abs(rotation_value) 
			physics_apply_torque(rotation_force * rotation_value)//phy_angular_velocity -= min(20,abs(phy_angular_velocity - rotation_speed * rotation_value))//physics_apply_angular_impulse(rotation_force * rotation_value)
			
		if rotation_value > 0 and abs(phy_angular_velocity) < rotation_speed * abs(rotation_value) 
			physics_apply_torque(rotation_force * rotation_value)//phy_angular_velocity += min(20,abs(phy_angular_velocity - rotation_speed * rotation_value))//physics_apply_angular_impulse(rotation_force * rotation_value)
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
	
#endregion

#region Health

// Health

health_difference = obj_health_old - obj_health
if health_difference > 0{
	global.screen_shake_intensity = health_difference
	global.screen_shake_duration = health_difference 
	}
	
	
if obj_health <= 0{
	scr_explode_object_new();
	//phy_active = false
	for(var i = 0; i < array_height_2d(modules); i+=1;){
		if scr_exists(modules[i,0])
			with(modules[i,0])
				instance_destroy() 
		with(modules[i,1])
				instance_destroy()
		}
	audio_play_sound_at(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)
	boom = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	boom.radius = 300
	boom.damage = 50
	instance_destroy();
	exit;
	}

#endregion

// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room();//scr_wrap_room_player();

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
// Save health value to check later if taken damage	
obj_health_old = obj_health
	
particles = clamp(particles,0,max_particles)	
	
// Sound

audio_emitter_position(ship_audio_emitter,phy_position_x,phy_position_y,0)

audio_listener_position(phy_position_x,phy_position_y,0.25*global.zoom)

// Update module holders

for(var i = 0; i < array_height_2d(modules); i+=1;){
		modules[i,0] = modules[i,1].module
		modules[i,1].persistent = true
		modules[i,1].x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,1].y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
		}

// Update modules and make sure they have the right activation button

for(var i = 0; i < array_height_2d(modules); i+=1;)
	if scr_exists(modules[i,0]){
		modules[i,0].cost = 0
		modules[i,0].owner = id
		if modules[i,0].active == true
			modules[i,0].activation_button = 0
		else
			switch (modules[i,0].offset_angle){
				case 0: modules[i,0].activation_button = 4; break;
				case 90: modules[i,0].activation_button = 3; break;
				case 180: modules[i,0].activation_button = 1; break;
				case 270: modules[i,0].activation_button = 2; break;
				}
		}

// Update modules and activate them!

for(var i = 0; i < array_height_2d(modules); i+=1;)
	if scr_exists(modules[i,0]){
		modules[i,0].module_holder = modules[i,1]
		if gamepad_button[modules[i,0].activation_button] == true and modules[i,0].activation_button != 0
			modules[i,0].activated = true
		modules[i,0].add_thrust = add_thrust
		}
		
if selected_active_module != noone and scr_exists(modules[selected_active_module,0]){
	if use_active_item == true
		modules[selected_active_module,0].activated = true
	else modules[selected_active_module,0].activated = false	
	}
