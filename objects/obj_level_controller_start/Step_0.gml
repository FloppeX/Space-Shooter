// Zoom

if gamepad_button_check_pressed(0,gp_padu)
		global.zoom = global.zoom - 200

if gamepad_button_check_pressed(0,gp_padd)
		global.zoom = global.zoom + 200
	
global.zoom = clamp(global.zoom,global.min_zoom,global.max_zoom)

// Enemies

if scr_timer(30){	
	if(instance_number(obj_enemy_ship_team_1) < number_of_enemies)
		new_enemy = scr_create_random_enemy();

	if(instance_number(obj_enemy_ship_team_2) < number_of_enemies_2)
		new_enemy = scr_create_random_enemy_2();
}

// Camera follow
/*
if scr_timer(300)
	if instance_number(obj_enemy_ship) > 0
		global.camera.follow_object = instance_find(obj_enemy_ship,irandom(instance_number(obj_enemy_ship)))
