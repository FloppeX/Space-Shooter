// Create a menu

start_menu = instance_create_depth(0.3*display_get_width(),0.4*display_get_height(),0,obj_start_menu)

// View settings

view_object = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_view_object)

global.zoom = 1200
zoom_timer = 0

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Create some asteroids

number_of_asteroids = 10
number_of_enemies = 0

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
	var i = irandom(2);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_3); break;
		}
	number_of_enemies -= 1
	}
	
// Sound

audio_stop_all()
level_music = music_sci_fi_open_looping
audio_play_sound(level_music,1,1)

// Create background sprites

scr_create_background_layers()