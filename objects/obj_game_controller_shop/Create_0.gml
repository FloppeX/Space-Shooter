event_inherited();

// Clear particles

part_particles_clear(global.part_system_above)
part_particles_clear(global.part_system_below)

// Place player in the center of the room

if instance_exists(obj_player)
	with(global.player){
		phy_position_x = 0.5 * room_width
		phy_position_y = 0.5 * room_height+300
		phy_speed_x = 0
		phy_speed_y = 0
		phy_angular_velocity = 0
		phy_rotation = -90		
		draw_scale = 1
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

shop = instance_create_depth(0.5 * room_width,0.5 * room_height-300,12,obj_shop)

// Wormhole

wormhole_begin = instance_create_depth(0.5 * room_width,0.5 * room_height+300,100,obj_wormhole_level_begin)

//


