// Reset values

// Gamepad controls

if gamepad_is_connected(0){
	gamepad_set_axis_deadzone(0, 0.1);
	
	// This is a convoluted way to do things but works pretty well
	rotation_value = gamepad_axis_value(0,gp_axislh);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2
		target_rotation = point_direction(0,0, gamepad_axis_value(0,gp_axislh), gamepad_axis_value(0,gp_axislv))
	gamepad_set_axis_deadzone(0, 0);
	rotation_value = sign(rotation_value) * left_stick_value
	
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
/*
	if gamepad_button_check(0,gp_padu)
			global.zoom = global.zoom - 20

	if gamepad_button_check(0,gp_padd)
			global.zoom = global.zoom + 20
	
	global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)
*/
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
		obj_player.credits += 4
	}
	
	/*
if keyboard_check_pressed(vk_control){
		scr_add_ship_segment(id,1,24,obj_ship_segment_player)
	}
*/
// Keyboard

if keyboard_check_pressed(vk_up)
	global.difficulty_level += 1
	
if keyboard_check_pressed(vk_down)
	global.difficulty_level -= 1