var target = argument0;
var temp_distance = 100000;
var closest_distance = 100000;
var temp_direction = 0;
var closest_direction = 0;
var temp_x,temp_y

temp_x = target.x - global.play_area_width
temp_y = target.y - global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x 
temp_y = target.y - global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance{
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x + global.play_area_width
temp_y = target.y - global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x - global.play_area_width
temp_y = target.y 
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x 
temp_y = target.y
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x + global.play_area_width
temp_y = target.y 
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x - global.play_area_width
temp_y = target.y + global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x 
temp_y = target.y + global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
temp_x = target.x + global.play_area_width
temp_y = target.y + global.play_area_height
temp_distance = point_distance(x,y,temp_x,temp_y)
if temp_distance < closest_distance {
	closest_distance = temp_distance
	closest_direction = point_direction(x,y,temp_x,temp_y)
	}
	
return closest_distance