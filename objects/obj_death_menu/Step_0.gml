/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : room_goto(rm_space) break;
		case 1 : 
			with(all)
					instance_destroy()
			global.difficulty_level = 1;
			room_goto(rm_start)
			break;
		case 2 : game_end();
	}