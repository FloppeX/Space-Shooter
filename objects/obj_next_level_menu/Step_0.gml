/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : {
			next_level = room_duplicate(rm_space)
			room_goto (next_level)
			global.difficulty_level += 1;
			}
			break;
	}