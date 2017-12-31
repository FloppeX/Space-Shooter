// TEST

var val = camera_get_view_angle(view_camera[0])

draw_text(50,100,val)
draw_text(100,100,(phy_rotation+90)mod 360)

//display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
display_set_gui_size(1024, 640);
map_edge_right = 1004
map_edge_left = 904
map_edge_top = 20
map_width = 100;
map_height = 100;
map_center_x = map_edge_left+ 0.5*map_width
map_center_y = map_edge_top+0.5*map_height

map_range = 0.5 * global.play_area_width;

draw_sprite(spr_radar,-1, map_edge_left+ 0.5*map_width,map_edge_top+0.5*map_height)
player_x = phy_position_x-global.wrap_border_left
player_y = phy_position_y-global.wrap_border_top

scr_draw_object_type_on_map(obj_asteroid,spr_map_marker_asteroid);
scr_draw_object_type_on_map(obj_rocket,spr_map_marker_rocket);
scr_draw_object_type_on_map(obj_enemy_ship,spr_map_marker_enemy_ship);
/*
for(i=0;i<instance_number(obj_asteroid);i+=1){
	temp_obj = instance_find(obj_asteroid, i);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		temp_dist = 0.5*map_width * (temp_dist/map_range)
		temp_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		temp_x = lengthdir_x(temp_dist,temp_dir)
		temp_y = lengthdir_y(temp_dist,temp_dir)
		draw_sprite(spr_map_marker_asteroid,-1,map_center_x+ temp_x,map_center_y + temp_y)
		}
	}
for(i=0;i<instance_number(obj_rocket);i+=1){
	temp_obj = instance_find(obj_rocket, i);
	temp_x = scr_wrap_closest_x(temp_obj)
	temp_y = scr_wrap_closest_y(temp_obj)
	temp_dist = point_distance(phy_position_x,phy_position_y,temp_x,temp_y)
	if temp_dist <= map_range{
		temp_dist = 0.5*map_width * (temp_dist/map_range)
		temp_dir = point_direction(phy_position_x,phy_position_y,temp_x,temp_y)
		temp_x = lengthdir_x(temp_dist,temp_dir)
		temp_y = lengthdir_y(temp_dist,temp_dir)
		draw_sprite_ext(spr_map_marker_rocket,-1,map_center_x+ temp_x,map_center_y + temp_y,1,1,-temp_obj.phy_rotation,c_white,1)
		}
	}*/
draw_sprite_ext(spr_map_marker_player,-1, map_center_x,map_center_y,1,1,-phy_rotation,c_white,1)