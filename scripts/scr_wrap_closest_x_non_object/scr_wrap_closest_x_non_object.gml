// Takes: starting x coordinate, destination x coordinate
// Returns: the closest equivalent destination x coordinate
var obj;
var origin_x = argument0
var destination_x = argument1;
if origin_x > destination_x
	if abs(origin_x - destination_x) < abs(origin_x - (destination_x + global.play_area_width))
		return destination_x
	else return destination_x + global.play_area_width
if origin_x < destination_x
	if abs(origin_x - destination_x) < abs(origin_x - (destination_x - global.play_area_width))
		return destination_x
	else return destination_x - global.play_area_width
return 0;