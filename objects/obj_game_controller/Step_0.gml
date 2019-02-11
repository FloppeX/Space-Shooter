// TEST graphics...

// Update game timer

global.game_timer += 1

// Game controls
	
if keyboard_check(vk_escape)
	game_end();
	
if gamepad_button_check_pressed(0,gp_start){
	display_reset(global.aa_level, 0);
	game_restart();
	}

if gamepad_button_check_pressed(0,gp_select){
	if global.view_mode == 2
		global.view_mode = 1
	else global.view_mode = 2
	}
	
	
if instance_exists(obj_player){
	
	if keyboard_check_pressed(vk_end)
		with(obj_player)
			obj_health = 0
			
	if global.view_mode == 2
		global.max_zoom = 6000
	else global.max_zoom = 4400
	
	if gamepad_button_check_pressed(0,ord("z"))
		global.zoom = global.zoom -100

	if gamepad_button_check_pressed(0,ord("x"))
		global.zoom = global.zoom + 100
	
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

layer_hspeed(layer_get_id("background_layer_1"), global.camera.phy_speed_x*0.8)
layer_vspeed(layer_get_id("background_layer_1"), global.camera.phy_speed_y*0.8)

layer_hspeed(layer_get_id("background_layer_2"), global.camera.phy_speed_x*0.4)
layer_vspeed(layer_get_id("background_layer_2"), global.camera.phy_speed_y*0.4)

layer_hspeed(layer_get_id("background_layer_3"), global.camera.phy_speed_x*0.2)
layer_vspeed(layer_get_id("background_layer_3"), global.camera.phy_speed_y*0.2)

layer_hspeed(layer_get_id("background_layer_4"), global.camera.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_4"), global.camera.phy_speed_y*0)

// Sound

//audio_emitter_position(global.music_emitter,view_object.phy_position_x,view_object.phy_position_y,0)

// Update stats

if scr_timer(60) 
	scr_write_stats_to_file()

