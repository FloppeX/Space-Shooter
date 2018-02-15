event_inherited();

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room

if instance_exists(obj_player){
	player = instance_find(obj_player,0)
	player.controls_disabled_timer = 60
	player.phy_position_x = 0.5 * room_width
	player.phy_position_y = 0.5 * room_height
	player.phy_rotation = -90
	player.draw_scale = 0.01
	}
if !instance_exists(obj_player){
	player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
	player.controls_disabled_timer = 60
	player.phy_rotation = -90
	player.draw_scale = 0.01
	}
	
// Wormhole

wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height,100,obj_wormhole_level_begin)

//
	
death_timer = 120
next_level_timer = 120

// Level

level = 1

// Enemies

number_of_asteroids = 8
number_of_enemies = 1// 3 * global.difficulty_level;

