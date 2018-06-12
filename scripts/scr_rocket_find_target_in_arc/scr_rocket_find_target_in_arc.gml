target_type = argument0
angle = argument1
angle_arc = argument2
var range = argument3
var target = noone
var temp_distance = range;
var closest_distance = range;
var temp_object = noone;
var temp_direction = angle;
var closest_direction = angle;
var temp_x,temp_y,i;

if instance_number(target_type) <= 0
	return noone;

for (i=0;i<instance_number(target_type);i+=1){
target = instance_find(target_type,i)
if target.invisible == false{
temp_x = target.phy_position_x - global.play_area_width
temp_y = target.phy_position_y - global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x 
temp_y = target.phy_position_y - global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x + global.play_area_width
temp_y = target.phy_position_y - global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x - global.play_area_width
temp_y = target.phy_position_y 
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x 
temp_y = target.phy_position_y
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x + global.play_area_width
temp_y = target.phy_position_y 
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x - global.play_area_width
temp_y = target.phy_position_y + global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x 
temp_y = target.phy_position_y + global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
	
temp_x = target.phy_position_x + global.play_area_width
temp_y = target.phy_position_y + global.play_area_height
temp_distance = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
temp_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
if temp_distance < closest_distance and abs(angle_difference(angle, temp_direction)) < 0.5 * angle_arc{
	temp_object = target;
	closest_distance = temp_distance
	closest_direction = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
	}
}
}

return temp_object;