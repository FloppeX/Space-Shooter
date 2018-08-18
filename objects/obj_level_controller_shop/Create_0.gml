// View settings

view_object = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_view_object)

global.zoom = 400

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room


if instance_exists(obj_player){
	global.player = instance_find(obj_player,0)
	global.player.disabled_timer = 60
	global.player.phy_position_x = 0.5 * room_width
	global.player.phy_position_y = 0.5 * room_height + 300
	global.player.phy_rotation = 0
	global.player.draw_scale = 0.01
	}
if !instance_exists(obj_player){
	global.player = instance_create_depth(0.5 * room_width,0.5 * room_height + 300,-5,obj_player)
	global.player.disabled_timer = 60
	global.player.phy_rotation = 0
	global.player.draw_scale = 0.01
	}

death_timer = 120
next_level_timer = 120

// Shop

shop = instance_create_depth(0.5 * room_width,0.5 * room_height,30,obj_shop)
cursor = instance_create_depth(0.5 * room_width,0.5 * room_height,30,obj_cursor)

// Wormhole

wormhole_begin = instance_create_depth(0.5 * room_width,0.5 * room_height+300,100,obj_wormhole_level_begin)

// Sound

audio_stop_all()
level_music = music_sci_fi_close_2_looping
audio_play_sound(level_music,1,1)

// Create background sprites

scr_create_background_layers()