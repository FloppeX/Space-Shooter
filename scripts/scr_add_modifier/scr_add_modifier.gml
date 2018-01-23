// Add a modifier script to a module or a bullet or whatever

var modifier = argument0

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if  asset_get_index(modifiers[i]) == asset_get_index (modifier)
		exit
	else
		modifiers[array_length_1d(modifiers)] = modifier