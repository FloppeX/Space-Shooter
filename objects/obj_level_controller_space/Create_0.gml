// test

//instance_create_layer(0,0,layer_get_id("instance_layer"),obj_mouse_cursor)

// View settings

global.camera.phy_position_x = 0.5 * room_width
global.camera.phy_position_y = 0.5 * room_height

//global.zoom = 1100

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
	
// Camera

global.camera.x = 3000
global.camera.y = 3000
global.camera.follow_object = obj_player
	
// Wormhole

// Temporarily disabled starting wormholes!!
wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height,100,obj_wormhole_level_begin_new)

// timers
stage_timer_start = 5400
stage_timer = stage_timer_start

number_of_waves = 3
enemy_wave_timer = 360
ship_interval_timer_start = 60
ship_interval_timer = ship_interval_timer_start

death_timer = 120

next_level_timer = 120

end_wormhole_created = false
wormhole_end_timer = 1200
wormhole_end_gone = false

// Level

//level = 1

// Enemies


number_of_asteroids = 12 + irandom(4 * global.difficulty_level)
number_of_explosive_barrels = 4 + irandom(global.difficulty_level)
number_of_enemies = 0

	
// Sound

audio_stop_all()
level_music = music_funky_gameplay_looping
if global.music_on 
	audio_play_sound(level_music,1,1)


// Create background sprites

scr_create_background_layers()

//

instance_create_depth(0,0,0,obj_mouse_cursor)