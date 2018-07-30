/*	
// Center camera
cam = camera_get_active()

camera_set_view_pos(cam,view_object_spectate.phy_position_x -0.5*camera_get_view_width(cam),view_object_spectate.phy_position_y-0.5*camera_get_view_height(cam))	
*/

// Zoom

if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 200

if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 200
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

// Create more enemies?

if gamepad_button_check_pressed(0,gp_shoulderl){
	temp_xpos = global.wrap_border_left + 0.26 * global.play_area_width +random(200)-100
	temp_ypos = global.wrap_border_top + 0.26 *global.play_area_height +random(200)-100
	var i = irandom(2);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_3); break;
		}
	new_enemy.target_object = obj_enemy_ship_team_2
}

if gamepad_button_check_pressed(0,gp_shoulderr){
	temp_xpos = global.wrap_border_right - 0.26 * global.play_area_width +random(200)-100
	temp_ypos = global.wrap_border_bottom - 0.26 *global.play_area_height +random(200)-100
	var i = irandom(2);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_3); break;
		}
	new_enemy.target_object = obj_enemy_ship_team_1
}

// Audio

audio_listener_position(view_object.phy_position_x,view_object.phy_position_y,0.25*global.zoom)

// Go back to start menu

if gamepad_button_check_pressed(0,gp_start){
	with(all)
		instance_destroy()
	room_goto(rm_start)
	}