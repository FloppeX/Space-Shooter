// Zoom

if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 200

if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 200
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

// Zoom

zoom_timer += 0.2
if zoom_timer > 360
	zoom_timer = 1

global.zoom = 800 + 200 * sin(degtorad(zoom_timer)) 


// Create more enemies?

if gamepad_button_check_pressed(0,gp_shoulderl){
	temp_xpos = global.wrap_border_left + 0.26 * global.play_area_width +random(400)-200
	temp_ypos = global.wrap_border_top + 0.26 *global.play_area_height +random(400)-200
	var i = irandom(2);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_3); break;
		}
}

if gamepad_button_check_pressed(0,gp_shoulderr){
	temp_xpos = global.wrap_border_right - 0.26 * global.play_area_width +random(400)-200
	temp_ypos = global.wrap_border_bottom - 0.26 *global.play_area_height +random(400)-200
	var i = irandom(2);
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_2_modular_3); break;
		}
}