if scr_exists(obj_player)
	enemy_wave_timer -= 1;

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
	
if number_of_explosive_barrels >= 1{
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top
		}
	else{
		temp_xpos = global.wrap_border_left
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	new_barrel =  instance_create_depth(temp_xpos,temp_ypos,0,obj_explosive_barrel);
	number_of_explosive_barrels -= 1
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
	var i = irandom(4);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_3); break;
		case 3: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_4); break;
		case 4: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_5); break;
		
		
		}
	number_of_enemies -= 1
	}


// Cheats!

if keyboard_check_pressed(vk_enter)
	number_of_enemies += 1

// Are all enemies dead? Or is the timer 0? Then count down and move to next level
	
if !instance_exists(obj_enemy_ship) or enemy_wave_timer <= 0
	next_level_timer -= 1
	
if next_level_timer <= 0 and !instance_exists(obj_wormhole){
	global.difficulty_level += 1;
	wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height-400,100,obj_wormhole_level_end)
	wormhole.next_level = rm_shop
	}

// Is the player dead? Then count down and restart

if !instance_exists(obj_player){
	death_timer -= 1
	global.difficulty_level = 1
	}
	
if death_timer <= 0 and !instance_exists(obj_death_menu){
	death_menu = instance_create_depth(0.5*display_get_width(),0.4*display_get_height(),0,obj_death_menu)
	death_menu.alignment = "center"
	}
	
// If the timer is 0, spawn lots of enemies

if enemy_wave_timer == 0
	number_of_enemies += 8
