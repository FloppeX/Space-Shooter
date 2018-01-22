// Takes: instance, angle, arc to look for objects
// Returns: true if the instance is within the arc
target = argument0
angle = argument1
angle_arc = argument2
var temp_direction = 0
var temp_x = 0
var temp_y = 0
var in_arc = false

temp_x = target.x - global.play_area_width
temp_y = target.y - global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true

temp_x = target.x
temp_y = target.y - global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x + global.play_area_width
temp_y = target.y - global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x - global.play_area_width
temp_y = target.y
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x 
temp_y = target.y 
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x + global.play_area_width
temp_y = target.y 
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x - global.play_area_width
temp_y = target.y + global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x 
temp_y = target.y + global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
temp_x = target.x + global.play_area_width
temp_y = target.y + global.play_area_height
temp_direction = point_direction(x,y,temp_x,temp_y)
if abs(angle_difference(angle,temp_direction)) < angle_arc
	in_arc = true
	
return in_arc
