if !instance_exists(owner)
	instance_destroy();
	
// Execute modifiers

for(var h = 0; h < array_height_2d(modifiers); h+=1;)
	if modifiers[h,0] != noone{
		script_execute(modifiers[h,0],modifiers[h,1])
		if scr_timer(120){ // Update descriptions. Dont need to do this every step...
			modifiers[h,2] = modifier_description
			description_lines[h+1,0] = modifier_description
			}
		}
