if gamepad_button_check_pressed(0,gp_padd)
	selected_item += 1

if gamepad_button_check_pressed(0,gp_padu)
	selected_item -= 1

if selected_item < 0
	selected_item = array_length_1d(menu_items)-1

if selected_item >= array_length_1d(menu_items)
	selected_item = 0
	
if gamepad_button_check_pressed(0,gp_face1)
	switch(selected_item){
		case 0 : break;
		case 1 : break;
	}