var target_type = argument0
var range = argument1
var target = noone
var temp_distance = range;
var closest_distance = range;
var temp_direction = 0;
var closest_direction = 0;
var temp_x,temp_y,i;

for (i=0;i<instance_number(target_type);i+=1){
target = instance_find(target_type,i)
if target.invisible == false{
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
}
}

return closest_direction