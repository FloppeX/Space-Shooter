var obj_type = argument0;
var map_sprite = argument1;

for (var h=0;h<= 99;h+=1)
	for (var i=0;i<= 3;i+=1)
		map_objects[h,i] = noone
		
var array_bookmark = 0
var j=0
while(j<instance_number(obj_asteroid)){
	temp_obj = instance_find(obj_asteroid, j);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		map_dist = 0.5*map_width * (temp_dist/map_range)
		map_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		map_objects[array_bookmark,0] = spr_map_marker_asteroid
		map_objects[array_bookmark,1] = map_dist
		map_objects[array_bookmark,2] = map_dir
		map_objects[array_bookmark,3] = -temp_obj.phy_rotation
		}
	j+=1;
	array_bookmark+=1
}
var j=0
while(j<instance_number(obj_enemy_ship_new)){
	temp_obj = instance_find(obj_enemy_ship_new, j);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		map_dist = 0.5*map_width * (temp_dist/map_range)
		map_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		map_objects[array_bookmark,0] = spr_map_marker_enemy_ship
		map_objects[array_bookmark,1] = map_dist
		map_objects[array_bookmark,2] = map_dir
		map_objects[array_bookmark,3] = -temp_obj.phy_rotation
		}
	j+=1;
	array_bookmark+=1
}
var j=0
while(j<instance_number(obj_wormhole_level_end_new)){
	temp_obj = instance_find(obj_wormhole_level_end_new, j);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		map_dist = 0.5*map_width * (temp_dist/map_range)
		map_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		map_objects[array_bookmark,0] = spr_map_wormhole
		map_objects[array_bookmark,1] = map_dist
		map_objects[array_bookmark,2] = map_dir
		map_objects[array_bookmark,3] = -temp_obj.phy_rotation
		}
	j+=1;
	array_bookmark+=1
}