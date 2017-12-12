

// Game controls

if gamepad_button_check(0,gp_select)
	game_end();
	
if keyboard_check(vk_escape)
	game_end();
	
if gamepad_button_check(0,gp_start){
	physics_pause_enable(true);
   instance_deactivate_all(true);
   game_paused = true
	}
else 
	if game_paused == true{
		physics_pause_enable(false);
	   instance_activate_all();
	   game_paused = false
		}
	
if gamepad_button_check_pressed(0,gp_shoulderl)
new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_ship)
	
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
// Wrap stuff

