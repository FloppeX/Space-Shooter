/*
input: module array, module type
output: randomly selected module
*/
var array = argument0
var total_probability = 0;
var random_number = 0;
var probability_step = 0;

for(var i = 0; i < array_height_2d(array); i+=1;)
	total_probability += array[i,3] //Add all rarity to get a "probability sum"
	
random_number = irandom(total_probability) // Get a random number from the total

for(var i = 0; i < array_height_2d(array); i+=1;){
	probability_step += array[i,3]
	if random_number <= probability_step{
		var temp_module = instance_create_depth(0,0,-10,array[i,0]);
		return temp_module
		}
	} 

return noone // if the function fails...