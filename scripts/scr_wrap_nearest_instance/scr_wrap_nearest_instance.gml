// Takes: object type 
// Returns: closest instance of object type
obj = argument0
var temp_instance = noone;
var closest_instance = noone;
var temp_distance = 1000000;
var temp_distance_2 = 100000;
var closest_distance = 1000000;
for(i=0;i<instance_number(obj);i+=1){
	temp_instance = instance_find(obj, i);
	temp_distance = point_distance(x,y,temp_instance.x - global.play_area_width,temp_instance.y - global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x,temp_instance.y - global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x + global.play_area_width,temp_instance.y - global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x - global.play_area_width,temp_instance.y)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x,temp_instance.y)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x + global.play_area_width,temp_instance.y)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x - global.play_area_width,temp_instance.y + global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x,temp_instance.y + global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	temp_distance = point_distance(x,y,temp_instance.x + global.play_area_width,temp_instance.y + global.play_area_height)
	if temp_distance < closest_distance{
		closest_distance = temp_distance
		closest_instance = temp_instance
		}
	}
return closest_instance
