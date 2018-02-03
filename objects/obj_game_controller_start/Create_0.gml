event_inherited();

// Create a menu

start_menu = instance_create_depth(0.1*display_get_width(),0.4*display_get_height(),0,obj_start_menu)

// Create some asteroids

repeat(6)
	new_asteroid_1 = instance_create_depth(global.wrap_border_left ,global.wrap_border_top ,0,obj_asteroid_big)
	
