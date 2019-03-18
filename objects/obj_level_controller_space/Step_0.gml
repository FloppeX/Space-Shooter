if scr_exists(obj_player){

	stage_timer -= 1
	if stage_timer > 0
		enemy_wave_timer -= 1;
	}

if enemy_wave_timer <= 0{
	number_of_enemies = 1+global.difficulty_level
	enemy_wave_timer = stage_timer_start/number_of_waves
	}

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
	var random_number = irandom(99)
	if random_number <= global.asteroid_chance_credit
		new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big_credit);
	else {if random_number <= (global.asteroid_chance_credit + global.asteroid_chance_health)
		new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big_health);
		else {if random_number<= (global.asteroid_chance_credit + global.asteroid_chance_health + global.asteroid_chance_particles)
			new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big_particles);
			else new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big);
			}
		}
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

	var tempdist = 200 + random(300)
	var tempdir = random(359)
	var temp_x = obj_player.phy_position_x + lengthdir_x(tempdist,tempdir)
	var temp_y = obj_player.phy_position_y + lengthdir_y(tempdist,tempdir)

	
	var i = irandom(global.difficulty_level);
	i = clamp(i,0,4)
	
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular_3); break;
		case 3: new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular_4); break;
		case 4: new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular_5); break;
		}
	
	new_enemy.obj_health = new_enemy.obj_health * (1 + 0.2 * global.difficulty_level)
	new_enemy.pickup_objects = 3
	new_enemy.disabled_timer = 10
	new_enemy.visible = false
	new_enemy.phy_active = false
	
	new_enemy_wormhole = instance_create_depth(temp_x,temp_y,15,obj_wormhole_level_begin_enemy);
	new_enemy_wormhole.warping_ship = new_enemy
	
	number_of_enemies -= 1
	}


// Cheats!

if keyboard_check_pressed(vk_enter)
	number_of_enemies += 1

if keyboard_check_pressed(vk_backspace){
	stage_timer = 0
	}


// Are all enemies dead? Or is the timer 0? Then count down and move to next level

/*
if !instance_exists(obj_enemy_ship) or enemy_wave_timer <= 0
	next_level_timer -= 1
*/
	
if stage_timer <= 0 and !instance_exists(obj_wormhole){
	global.difficulty_level += 1;
	wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height-400,100,obj_wormhole_level_end)
	if global.difficulty_level <= global.number_of_levels
		wormhole.next_level = rm_shop
	else 
		wormhole.next_level = rm_end
	}

// Is the player dead? Then count down and restart

if !instance_exists(obj_player){
	death_timer -= 1
	global.difficulty_level = 1
	}
	
if death_timer <= 0 and !instance_exists(obj_death_menu){
	death_menu = instance_create_depth(0.5*display_get_gui_width(),0.4*display_get_gui_height(),0,obj_death_menu)
	death_menu.alignment = "center"
	death_menu.x_pos = 0.5*display_get_width()
	death_menu.y_pos = 0.4*display_get_height()
	}
	
// If the timer is 0, spawn lots of enemies

if stage_timer == 0
	number_of_enemies += 10
