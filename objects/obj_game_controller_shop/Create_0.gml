event_inherited();

// Place player in the center of the room

if !instance_exists(obj_player){
	player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
	player.controls_disabled = false
	player.phy_rotation = -90
	}
	
death_timer = 120
next_level_timer = 120

// Level

level = 1

// Enemies

number_of_asteroids = 6
number_of_enemies = 1// 3 * global.difficulty_level;