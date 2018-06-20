// Move view object

if instance_exists(obj_player){
	view_object.phy_position_x = obj_player.phy_com_x
	view_object.phy_position_y = obj_player.phy_com_y
	view_object.phy_speed_x = obj_player.phy_speed_x
	view_object.phy_speed_y = obj_player.phy_speed_y
	}
	
// Game controls
	
if keyboard_check(vk_escape)
	game_end();
	
if gamepad_button_check(0,gp_start)
	game_restart();

if gamepad_button_check_pressed(0,gp_select){
	repeat(10)
		instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_pickup_credit);
	/*
	var i = irandom(0)
	switch(i){
		case 0: new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_modular_3); break;
		}
	*/
	}
	
	
if instance_exists(obj_player){
	
	if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 200

	if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 200
	
	global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)
	}

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
	

	
// Set background speed

layer_hspeed(layer_get_id("background_layer_1"), view_object.phy_speed_x*0.8)
layer_vspeed(layer_get_id("background_layer_1"), view_object.phy_speed_y*0.8)

layer_vspeed(layer_get_id("background_layer_2"), view_object.phy_speed_y*0.4)

layer_hspeed(layer_get_id("background_layer_3"), view_object.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_3"), view_object.phy_speed_y*0)

layer_hspeed(layer_get_id("background_layer_4"), view_object.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_4"), view_object.phy_speed_y*0)

// Sound

//audio_emitter_position(global.music_emitter,view_object.phy_position_x,view_object.phy_position_y,0)

