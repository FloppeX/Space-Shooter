// Zoom

global.zoom = 800

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room

if instance_exists(obj_player){
	global.player = instance_find(obj_player,0)
	global.player.controls_disabled_timer = 60
	global.player.phy_position_x = 0.5 * room_width
	global.player.phy_position_y = 0.5 * room_height
	global.player.phy_rotation = -180
	global.player.draw_scale = 0.01
	}
if !instance_exists(obj_player){
	global.player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
	global.player.controls_disabled_timer = 60
	global.player.phy_rotation = -180
	global.player.draw_scale = 0.01
	}
	
// Wormhole

wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height,100,obj_wormhole_level_begin)

// timers

death_timer = 120

next_level_timer = 120

// Level

//level = 1

// Enemies

number_of_asteroids = 10 // irandom(2) * global.difficulty_level;
number_of_enemies = 2 * global.difficulty_level;

	
// Sound

audio_stop_all()
level_music = music_funky_gameplay_looping
audio_play_sound(level_music,1,1)


// Create background sprites

scr_create_background_layers()