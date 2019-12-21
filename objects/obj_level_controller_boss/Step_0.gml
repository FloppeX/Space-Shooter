//if instance_exists(obj_player)
//	global.camera.follow_object = obj_player //obj_player

//
	


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

//

if boss_created == false
	boss_creation_timer -= 1
	
if boss_created == true and !scr_exists(boss_object)
	boss_killed = true

if boss_killed
	boss_killed_timer -= 1
	
if boss_creation_timer <= 0 and boss_created == false{

	var tempdist = 200 + random(300)
	var tempdir = random(359)
	var temp_x = obj_player.phy_position_x + lengthdir_x(tempdist,tempdir)
	var temp_y = obj_player.phy_position_y + lengthdir_y(tempdist,tempdir)

	
	global.temp_number_of_segments = irandom(global.difficulty_level);
	
	enemy_boss = instance_create_depth(temp_x,temp_y,0,boss_object);

	enemy_boss.pickup_objects = 12
	enemy_boss.disabled_timer = 10
	enemy_boss.visible = false
	enemy_boss.phy_active = false
	
	enemy_boss_wormhole = instance_create_depth(temp_x,temp_y,100,obj_wormhole_level_begin_enemy);
	enemy_boss_wormhole.warping_ship = enemy_boss
	
	boss_created = true
	}



// Are all enemies dead? Or is the timer 0? Then count down and move to next level


	
if boss_killed_timer <= 0 and end_wormhole_created == false{
	global.difficulty_level += 1;
	global.active_level += 1
	wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height-400,100,obj_wormhole_level_end_new)
	wormhole.next_level = global.levels[global.active_level]
	end_wormhole_created = true
	}
	
	
if instance_exists(obj_wormhole_level_end_new){
	wormhole_end_timer -= 1
	if wormhole_end_timer <= 0{
		with(obj_wormhole_level_end_new)
			done_warping = true
		wormhole_end_gone = true
		}
	}


// Is the player dead? Then count down and restart

if obj_player.destroyed{
	death_timer -= 1
	global.difficulty_level = 1
	}
	
if death_timer <= 0 and !instance_exists(obj_death_menu){
	death_menu = instance_create_depth(0.5*display_get_gui_width(),0.4*display_get_gui_height(),0,obj_death_menu)
	death_menu.alignment = "center"
	death_menu.x_pos = 0.5*display_get_gui_width()
	death_menu.y_pos = 0.5*display_get_gui_height()
	}
	