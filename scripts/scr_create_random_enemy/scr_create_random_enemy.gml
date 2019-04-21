var temp_x = global.wrap_border_left + random(global.play_area_width)
var temp_y = temp_ypos = global.wrap_border_top + random(global.play_area_height)

	
global.temp_number_of_segments = irandom(global.difficulty_level)+2;
global.temp_number_of_segments = clamp(global.temp_number_of_segments,3,8)
	
new_enemy = instance_create_depth(temp_x,temp_y,0,obj_enemy_modular);

new_enemy.max_health_base = new_enemy.max_health_base * (1 + 0.2 * global.difficulty_level)
new_enemy.obj_health = new_enemy.max_health_base
new_enemy.pickup_objects = 3
new_enemy.disabled_timer = 10
new_enemy.visible = false
new_enemy.phy_active = false
	
new_enemy_wormhole = instance_create_depth(temp_x,temp_y,100,obj_wormhole_level_begin_enemy);
new_enemy_wormhole.warping_ship = new_enemy
	