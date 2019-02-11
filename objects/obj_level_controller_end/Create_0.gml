// test

instance_create_depth(3000,1800,10,obj_planet_earth)

// View settings

with(obj_view_object)
	instance_destroy();
	
view_object = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_view_object)

global.zoom = 1100

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room

if instance_exists(obj_player){
	global.player = instance_find(obj_player,0)
	global.player.controls_disabled_timer = 60
	global.player.phy_position_x = 0.5 * room_width
	global.player.phy_position_y = 0.5 * room_height
	global.player.phy_rotation = 0
	global.player.draw_scale = 0.01
	}
if !instance_exists(obj_player){
	global.player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
	global.player.controls_disabled_timer = 60
	global.player.phy_rotation = 0
	global.player.draw_scale = 0.01
	}
	
with(view_object){
	phy_position_x = obj_player.phy_com_x
	phy_position_y = obj_player.phy_com_y
	phy_speed_x = obj_player.phy_speed_x
	phy_speed_y = obj_player.phy_speed_y
	}
	
// Wormhole

// Temporarily disabled starting wormholes!!
wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height,100,obj_wormhole_level_begin)

// timers

enemy_wave_timer = 6000

death_timer = 120

next_level_timer = 120

end_timer = 0

// Level

//level = 1

// Enemies

number_of_asteroids = 0 //3 + irandom(global.difficulty_level)
number_of_explosive_barrels = 0 //irandom(3+global.difficulty_level)
number_of_enemies = 0// power(2,global.difficulty_level)

	
// Sound

audio_stop_all()
level_music = music_sci_fi_close_2_looping
if global.music_on 
	audio_play_sound(level_music,1,1)


// Create background sprites

scr_create_background_layers()

// Update player stats

scr_write_stats_to_file()