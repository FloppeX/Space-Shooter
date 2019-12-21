if !scr_exists(follow_object)
	follow_object = obj_player

if scr_exists(follow_object){
	phy_position_x = follow_object.phy_position_x
	phy_position_y = follow_object.phy_position_y
	}
	
// Wrap room

scr_find_mirror_positions();
scr_wrap_room_camera();

//


// Screen shake and rumble

if (global.screen_shake_duration > 0){
	phy_position_x += choose(random(global.screen_shake_intensity), -random(global.screen_shake_intensity))
	phy_position_y += choose(random(global.screen_shake_intensity), -random(global.screen_shake_intensity))
	gamepad_set_vibration(0,1,1)
	global.screen_shake_duration -= 1
	global.screen_shake_intensity -= 1
	}
else 
	gamepad_set_vibration(0,0,0)

// Zoom


if obj_input_controller.zoom_out
	zoom -= 10
		
if obj_input_controller.zoom_in
	zoom += 10


zoom = global.zoom
zoom = clamp(zoom,global.min_zoom,global.max_zoom)

temp_zoom += (zoom - temp_zoom)/100//25


///

var vm = matrix_build_lookat(phy_position_x,phy_position_y,-100,phy_position_x,phy_position_y,100,0,1,0);
var pm = matrix_build_projection_ortho(temp_zoom*1.6,temp_zoom,1,100000)
camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)
view_camera[0] = camera;

// Set wrap boundaries for other objects

global.wrap_border_left = phy_position_x - 0.5 * global.play_area_width;
global.wrap_border_right = phy_position_x + 0.5 * global.play_area_width;
global.wrap_border_top = phy_position_y - 0.5 * global.play_area_height;
global.wrap_border_bottom = phy_position_y + 0.5 * global.play_area_height;
