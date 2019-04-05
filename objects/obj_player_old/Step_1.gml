// Reset controls

rotation_value = 0
left_stick_value = 0
add_thrust = 0
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false
use_active_item = false
select_next_active_item = false

// Execute modifiers

for(var h = 0; h < array_height_2d(modifiers); h+=1;)
	if modifiers[h,0] != noone{
		script_execute(modifiers[h,0],modifiers[h,1])
		if scr_timer(120){ // Update descriptions. Dont need to do this every step...
			modifiers[h,2] = modifier_description
			description_lines[h+1,0] = modifier_description
			}
		}