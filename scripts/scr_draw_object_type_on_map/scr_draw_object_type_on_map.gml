var obj_type = argument0;
var map_sprite = argument1;
var color = argument2;

for(i=0;i<instance_number(obj_type);i+=1){
	temp_obj = instance_find(obj_type, i);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		temp_dist = 0.5*map_width * (temp_dist/map_range)
		temp_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		temp_x = lengthdir_x(temp_dist,temp_dir)
		temp_y = lengthdir_y(temp_dist,temp_dir)
		draw_sprite_ext(map_sprite,-1,map_center_x+ temp_x,map_center_y + temp_y,map_scale,map_scale,-temp_obj.phy_rotation,color,1)
		}
}