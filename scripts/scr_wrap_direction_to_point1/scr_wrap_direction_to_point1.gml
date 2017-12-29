var origin_x = argument0;
var origin_y = argument1;
var target_x = argument2;
var target_y = argument3;
var temp_distance = 100000;
var closest_distance = 100000;
var temp_direction = 0;
var closest_direction = 0;
var temp_x,temp_y

temp_x = target_x - global.play_area_width
temp_y = target_y - global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x
temp_y = target_y - global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance{
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x + global.play_area_width
temp_y = target_y - global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x - global.play_area_width
temp_y = target_y 
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x 
temp_y = target_y
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x + global.play_area_width
temp_y = target_y 
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x - global.play_area_width
temp_y = target_y + global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x
temp_y = target_y + global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
temp_x = target_x + global.play_area_width
temp_y = target_y + global.play_area_height
temp_distance = point_distance(origin_x,origin_y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(origin_x,origin_y,temp_x,temp_y)
	}
	
	
return closest_direction