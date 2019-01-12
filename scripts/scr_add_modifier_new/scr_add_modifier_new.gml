// Add a modifier script to a module or a bullet or whatever

var script = argument0
var variable = argument1
var name = argument2
var description = argument3
var sprite = argument4
var already_has_this_modifier = false

// Removed the ban on multiple copies of modifiers. Dont know why it was there
//for(var i = 0; i < array_height_2d(modifiers); i+=1;)
//	if  modifiers[i,0] == modifier
//		exit;

for(var i = 0; i < array_height_2d(modifiers); i+=1;)
		if  modifiers[i,0] == noone {
			modifiers[i,0] = script
			modifiers[i,1] = variable
			modifiers[i,2] = name
			modifiers[i,3] = description
			modifiers[i,4] = sprite
			modifiers[i+1,0] = noone
			modifiers[i+1,1] = noone
			modifiers[i+1,2] = noone
			exit;
			}

//modifiers[array_length_2d(modifiers,0),0] = modifier
	