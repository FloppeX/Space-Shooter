event_inherited();

// Create a menu

start_menu = instance_create_depth(0.2*display_get_width(),0.4*display_get_height(),0,obj_start_menu)

// Create some asteroids

number_of_asteroids = 10
number_of_enemies = 10

while(number_of_asteroids > 0){
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
	
while(number_of_enemies > 0){
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top +100
		}
	else{
		temp_xpos = global.wrap_border_left +100
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1)
	number_of_enemies -= 1
	}
	
// Sound

start_menu_music = music_urban_jungle_looping
//audio_play_sound_on(game_controller_audio_emitter,start_menu_music,1,1)