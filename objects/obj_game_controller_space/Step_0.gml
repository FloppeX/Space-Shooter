// Move view object

if instance_exists(obj_player){
	view_object.phy_position_x = obj_player.phy_com_x
	view_object.phy_position_y = obj_player.phy_com_y
	view_object.phy_speed_x = obj_player.phy_speed_x
	view_object.phy_speed_y = obj_player.phy_speed_y
	}
else {
	// view_object.phy_speed_x = 0
	// view_object.phy_speed_y = 0
	}

// Game controls

if gamepad_button_check(0,gp_select)
	game_end();
	
if keyboard_check(vk_escape)
	game_end();
	
if gamepad_button_check_pressed(0,gp_padu)
	global.zoom = global.zoom - 400

if gamepad_button_check_pressed(0,gp_padd)
	global.zoom = global.zoom + 400
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

if gamepad_button_check_pressed(0,gp_padl){
	if global.aa_level  <= 3
		global.aa_level  += 0.5
	else global.aa_level  = 0
	draw_set_swf_aa_level(global.aa_level );
	}

if gamepad_button_check_pressed(0,gp_padr)
	if global.view_mode == 2
		global.view_mode = 1
	else global.view_mode = 2

	
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
		
if gamepad_button_check(0,gp_select)
	game_restart();
	
if gamepad_button_check_pressed(0,gp_shoulderl)
	switch(irandom(2)){
		case 0: new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_assault_ship)
		case 1: new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_interceptor)
		case 2: new_asteroid =  instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_asteroid_big)
		}

// Set background speed

layer_hspeed(layer_get_id("background_layer_1"), view_object.phy_speed_x*0.8)
layer_vspeed(layer_get_id("background_layer_1"), view_object.phy_speed_y*0.8)

layer_hspeed(layer_get_id("background_layer_2"), view_object.phy_speed_x*0.4)
layer_vspeed(layer_get_id("background_layer_2"), view_object.phy_speed_y*0.4)

layer_hspeed(layer_get_id("background_layer_3"), view_object.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_3"), view_object.phy_speed_y*0)

layer_hspeed(layer_get_id("background_layer_4"), view_object.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_4"), view_object.phy_speed_y*0)

// Sound

audio_emitter_position(game_controller_audio_emitter,view_object.phy_position_x, view_object.phy_position_y,global.max_zoom);

