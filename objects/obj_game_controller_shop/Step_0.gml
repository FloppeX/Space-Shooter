event_inherited();

// Game controls

if instance_exists(obj_player){
	
	if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 400

	if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 400
	
	global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)
	}

if gamepad_button_check_pressed(0,gp_padl){
	if global.aa_level  <= 3
		global.aa_level  += 0.5
	else global.aa_level  = 0
	draw_set_swf_aa_level(global.aa_level );
	}

if gamepad_button_check_pressed(0,gp_padr)
	if global.view_mode == 2
		global.view_mode = 1
	else global.view_mode = 2

// Make the players modules visible
	
	with (ship_modules[i])
		visible = true