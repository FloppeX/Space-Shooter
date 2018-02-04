/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : room_goto(rm_space) break;
		case 1 : {
				options_menu = instance_create_depth(0.3*display_get_width(),0.4*display_get_height()+item_distance,0,obj_options_menu)
				options_menu.previous_menu = id;
				menu_active = false;
				break;
				}
		case 2 : break;
		case 3 : game_end();
	}