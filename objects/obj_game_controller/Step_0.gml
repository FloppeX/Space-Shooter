

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
	

	
// Wrap stuff

