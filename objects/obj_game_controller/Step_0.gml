// Update game timer

global.game_timer += 1

// Game controls
	
if keyboard_check(vk_escape)
	game_end();
	
if gamepad_button_check(0,gp_start)
	game_restart();

if gamepad_button_check_pressed(0,gp_select){
	if global.view_mode == 2
		global.view_mode = 1
	else global.view_mode = 2
	}
	
	
if instance_exists(obj_player){
	
	if gamepad_button_check(0,gp_padu)
		global.zoom = global.zoom -10

	if gamepad_button_check(0,gp_padd)
		global.zoom = global.zoom + 10
	
	global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)
	}

if keyboard_check_pressed(vk_delete)
	repeat(10)
		instance_create_layer(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),"instance_layer",obj_pickup_credit)
	
/*
if gamepad_button_check_pressed(0,gp_padl){
	if global.aa_level  <= 3
		global.aa_level  += 0.5
	else global.aa_level  = 0
	draw_set_swf_aa_level(global.aa_level );
	}
*/
	
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

//audio_emitter_position(global.music_emitter,view_object.phy_position_x,view_object.phy_position_y,0)

