event_inherited();

// Add enemies and asteroids if needed

if number_of_asteroids >= 1{
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top
		}
	else{
		temp_xpos = global.wrap_border_left
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big);
	number_of_asteroids -= 1
	}

if number_of_enemies >= 1{
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top
		}
	else{
		temp_xpos = global.wrap_border_left
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	var i = irandom(1);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_assault_ship); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_interceptor); break;
		}
	number_of_enemies -= 1
	}

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

// Is the player dead? Then count down and restart

if !instance_exists(obj_player)
	death_timer -= 1
	
if death_timer <= 0 and !instance_exists(obj_death_menu){
	death_menu = instance_create_depth(0.5*display_get_width(),0.3*display_get_height(),0,obj_death_menu)
	death_menu.alignment = "center"
	}
	
// Are all enemies dead? Then count down and move to next level
	
if !instance_exists(obj_enemy_ship)
	next_level_timer -= 1
	
if next_level_timer <= 0 and !instance_exists(obj_next_level_menu){
	next_level_menu = instance_create_depth(0.5*display_get_width(),0.3*display_get_height(),0,obj_next_level_menu)
	next_level_menu.alignment = "center"
	}