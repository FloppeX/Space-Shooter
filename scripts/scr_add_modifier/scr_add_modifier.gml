// Add a modifier script to a module or a bullet or whatever

var modifier = argument0
//var variable = argument1
var already_has_this_modifier = false

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if  modifiers[i,0] == modifier
		exit;

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
		if  modifiers[i,0] == noone {
			modifiers[i,0] = modifier
			exit;
			}

modifiers[array_length_2d(modifiers,0),0] = modifier
	