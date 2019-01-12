// Add a modifier script to a module or a bullet or whatever

var object = argument0
var script = argument1

for(var i = 0; i < array_height_2d(object.modifiers); i+=1;)
		if object.modifiers[i,0] == script
			return true
return false

//modifiers[array_length_2d(modifiers,0),0] = modifier
	