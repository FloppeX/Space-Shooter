/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !menu_active
	exit;

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : {
				global.difficulty_level = 1;
				global.active_level = 0
				room_goto(global.levels[global.active_level])
				break;
				}
				
		case 1 : {
				arena = room_duplicate(rm_spectator)
				room_goto(arena) 
				break;
				}
				
		case 2 : {
				options_menu = instance_create_depth(0,0,0,obj_options_menu)
				options_menu.y_pos = 0.4*display_get_height()+ 2 * item_distance
				options_menu.x_pos = 0.3*display_get_width()+ 4 * item_distance
				options_menu.previous_menu = id;
				menu_active = false;
				}
				break;
		case 3 : break;
		case 4 : game_end();
	}