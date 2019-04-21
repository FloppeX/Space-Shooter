// Zoom

if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 100

if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 100
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

// Enemies

if scr_timer(30){	
	if(instance_number(obj_enemy_modular) < number_of_enemies)
		new_enemy = scr_create_random_enemy();

	//if(instance_number(obj_enemy_ship_team_2) < number_of_enemies_2)
	//	new_enemy = scr_create_random_enemy_2();
}
