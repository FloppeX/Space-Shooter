depth = 0

// Difficulty

global.difficulty_level = 1

// Create a menu

start_menu = instance_create_depth(0,0,0,obj_start_menu)
start_menu.x_pos = 0.5*display_get_gui_width()
start_menu.y_pos = 0.5*display_get_gui_height()

// View settings

//view_object = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_view_object)

global.zoom = 1000
zoom_timer = 0

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Create some asteroids

number_of_asteroids = 10
number_of_enemies = 12
number_of_enemies_2 = 12

if(number_of_asteroids > 0){
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

// Sound

audio_stop_all()
level_music = music_sci_fi_open_looping
if global.music_on 
	audio_play_sound(level_music,1,1)

// Create background sprites

scr_create_background_layers()

// Create fake wormholes for title!

fake_wormhole_1 = instance_create_depth(0,0,-100,obj_wormhole_fake)
fake_wormhole_2 = instance_create_depth(0,0,-100,obj_wormhole_fake)

fake_wormhole_1.draw_position_x = 6.8 * global.gui_unit
fake_wormhole_1.draw_position_y = 3 * global.gui_unit

fake_wormhole_2.draw_position_x = 9 * global.gui_unit
fake_wormhole_2.draw_position_y = 3 * global.gui_unit

