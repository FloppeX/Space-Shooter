if !instance_exists(owner)
	instance_destroy();
	
// Execute modifiers

for(var h = 0; h < array_length_1d(modifiers); h+=1;)
	if modifiers[h] != noone{
		script_execute(modifiers[h])
		description_lines[h+1] = modifier_description
		}
