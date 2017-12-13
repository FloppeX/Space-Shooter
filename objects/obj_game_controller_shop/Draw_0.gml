// Zooming

if gamepad_button_check_pressed(0,gp_shoulderr)
	if global.view_mode == 1
		global.view_mode = 2
	else global.view_mode = 1

aspect_ratio = display_get_width()/display_get_height(); 

if temp_zoom > global.zoom
	temp_zoom -= 0.1 * abs(temp_zoom-global.zoom)
if temp_zoom < global.zoom
	temp_zoom += 0.1 * abs(temp_zoom-global.zoom)
	

if global.view_mode == 1{
	view_visible[1] = false
	view_visible[0] = true
	view_set_wport(view_current,1920)
	view_set_hport(view_current,1080)
	camera_set_view_size(view_camera[0],temp_zoom*aspect_ratio,temp_zoom)
	}
if global.view_mode == 2{
	view_visible[1] = true
	view_visible[0] = false
	view_set_wport(view_current,1920)
	view_set_hport(view_current,1080)
	camera_set_view_size(view_camera[1],global.play_area_width*aspect_ratio,global.play_area_height)
	}

// Center camera
cam = camera_get_active()
camera_set_view_pos(cam,obj_player.phy_com_x -0.5*camera_get_view_width(cam),obj_player.phy_com_y-0.5*camera_get_view_height(cam))

// Drav lines if view mode 2 

if global.view_mode == 2{
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_right,global.wrap_border_top,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_bottom,global.wrap_border_right,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_left,global.wrap_border_top,global.wrap_border_left,global.wrap_border_bottom,5)
	draw_line_width(global.wrap_border_right,global.wrap_border_top,global.wrap_border_right,global.wrap_border_bottom,5)


	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,room_height - global.wrap_margin_player,room_width- global.wrap_margin_player,room_height -global.wrap_margin_player,5)
	draw_line_width(global.wrap_margin_player,global.wrap_margin_player,global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	draw_line_width(room_width- global.wrap_margin_player,global.wrap_margin_player,room_width- global.wrap_margin_player,room_height - global.wrap_margin_player,5)
	}
	
// draw shadows

with(obj_player){
	draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.1)
	draw_sprite_ext(sprite_index,-1,phy_position_x+29,phy_position_y+29,0.6,0.6,-phy_rotation,c_black,0.1)
	draw_sprite_ext(sprite_index,-1,phy_position_x+31,phy_position_y+31,0.6,0.6,-phy_rotation,c_black,0.1)
	}
	
with(obj_enemy_ship)
	draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.3)
	
with(obj_rocket)
	draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.3)
	
with(obj_bullet)
	draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.3)