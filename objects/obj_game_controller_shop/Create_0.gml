event_inherited();

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room

if instance_exists(obj_player)
	with(obj_player){
		phy_position_x = 0.5 * room_width
		phy_position_y = 0.5 * room_height	
		phy_rotation = -90
		visible = true			
		}

if !instance_exists(obj_player){
	global.player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
	global.player.phy_rotation = -90
	}
	
	
death_timer = 120
next_level_timer = 120

// Level

level = 1

// Enemies

number_of_asteroids = 0
number_of_enemies = 0// 3 * global.difficulty_level;

// Shop

shop = instance_create_depth(0,0,12,obj_shop)

// Wormhole

wormhole = instance_create_depth(0.5 * room_width,0.5 * room_height-400,100,obj_wormhole_level_end)
wormhole.next_level = rm_space
