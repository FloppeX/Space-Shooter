// Add a modifier script to a module or a bullet or whatever

var modifier = argument0
var already_has_this_modifier = false

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	//if  modifiers[i] == asset_get_index (modifier)
	if  modifiers[i] == modifier
		already_has_this_modifier = true

if already_has_this_modifier == false
	modifiers[array_length_1d(modifiers)] = modifier
	