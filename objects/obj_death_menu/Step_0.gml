/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : 
			global.difficulty_level = 1;
			global.active_level = 0
			room_goto(global.levels[global.active_level])
			break;
		case 1 : 
			global.difficulty_level = 1;
			global.active_level = 0
			new_start_room = room_duplicate(rm_start)
			room_goto(new_start_room)
			break;
		case 2 : game_end();
	}