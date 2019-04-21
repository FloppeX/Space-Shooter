if !scr_exists(owner)
	instance_destroy();
	
// Execute modifiers

for(var h = 0; h < array_height_2d(modifiers); h+=1;)
	if modifiers[h,0] != noone
		script_execute(modifiers[h,0],modifiers[h,1])