/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !menu_active
	exit;

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : {
				//global.player = instance_create_layer(0.5 * room_width,0.5 * room_height,"instance_layer",obj_player)
				level_1 = room_duplicate(rm_space)
				room_goto(level_1) 
				break;
				}
				
		case 1 : {
				arena = room_duplicate(rm_spectator)
				room_goto(arena) 
				break;
				}
				
		case 2 : {
				options_menu = instance_create_depth(0.3*display_get_width(),0.4*display_get_height()+item_distance,0,obj_options_menu)
				options_menu.previous_menu = id;
				menu_active = false;
				}
				break;
		case 3 : break;
		case 4 : game_end();
	}