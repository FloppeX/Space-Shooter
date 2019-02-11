/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : break;
		case 1 : global.aa_level += 1;
					if global.aa_level > 3
						global.aa_level = 0;
					break;
		case 2 : if global.music_on
						global.music_on = false
				else global.music_on = true;
				break;
		case 3 : break;
	}