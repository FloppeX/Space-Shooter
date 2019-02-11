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

global.camera.zoom = 1100 + 200 * sin(degtorad(zoom_timer)) 

// Camera follow
/*
if scr_timer(300)
	if instance_number(obj_enemy_ship) > 0
		global.camera.follow_object = instance_find(obj_enemy_ship,irandom(instance_number(obj_enemy_ship)))
