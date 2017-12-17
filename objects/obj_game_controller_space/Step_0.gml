

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
	
// Set background position/speed
/*
layer_x(layer_get_id("background_layer_1"), obj_player.phy_position_x* 0.8)
layer_y(layer_get_id("background_layer_1"), obj_player.phy_position_y* 0.8)

layer_x(layer_get_id("background_layer_2"), obj_player.phy_position_x* 0.6)
layer_y(layer_get_id("background_layer_2"), obj_player.phy_position_y* 0.6)

layer_x(layer_get_id("background_layer_3"), obj_player.phy_position_x* 0.4)
layer_y(layer_get_id("background_layer_3"), obj_player.phy_position_y* 0.4)

layer_x(layer_get_id("background_layer_4"), obj_player.phy_position_x* 0)
layer_y(layer_get_id("background_layer_4"), obj_player.phy_position_y* 0)

*/
layer_hspeed(layer_get_id("background_layer_1"), obj_player.phy_speed_x*0.8)
layer_vspeed(layer_get_id("background_layer_1"), obj_player.phy_speed_y*0.8)

layer_hspeed(layer_get_id("background_layer_2"), obj_player.phy_speed_x*0.4)
layer_vspeed(layer_get_id("background_layer_2"), obj_player.phy_speed_y*0.4)

layer_hspeed(layer_get_id("background_layer_3"), obj_player.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_3"), obj_player.phy_speed_y*0)

layer_hspeed(layer_get_id("background_layer_4"), obj_player.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_4"), obj_player.phy_speed_y*0)
