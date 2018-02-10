event_inherited();

// Place player in the center of the room

if instance_exists(obj_player)
	with(obj_player){
		phy_position_x = 0.5 * room_width
		phy_position_y = 0.5 * room_height
		controls_disabled = true
		phy_rotation = -90
		for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
			with (ship_modules[i])
				visible = true
		}

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

number_of_asteroids = 0
number_of_enemies = 0// 3 * global.difficulty_level;

// Shop

shop = instance_create_depth(0,0,12,obj_shop)
shop.phy_position_x = 0.5 * room_width + 80
shop.phy_position_y = 0.5 * room_height - 80