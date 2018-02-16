// Calculate the variables for each module

for(var h = 0; h < array_length_1d(modifiers); h+=1;)
	if modifiers[h] != noone{
		script_execute(modifiers[h])
		description_lines[h] = modifier_description
		}
