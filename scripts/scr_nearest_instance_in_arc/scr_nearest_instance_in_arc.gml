obj = argument0
angle = argument1
angle_arc = argument2
var temp_instance = noone;
var closest_instance = noone;
var temp_distance = 1000;
var closest_distance = 1000;
for(i=0;i<instance_number(obj);i+=1){
	temp_instance = instance_find(obj, i);
	temp_distance = scr_wrap_closest_distance_to_instance(temp_instance)
	if scr_wrap_instance_in_angle(temp_instance,angle,angle_arc)
		if temp_distance < closest_distance
			closest_instance = temp_instance
	}
return closest_instance