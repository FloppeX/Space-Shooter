

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
		
if gamepad_button_check(0,gp_select)
	game_restart();
	
if gamepad_button_check_pressed(0,gp_shoulderl)
new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_ship)
	
// Set background speed

layer_hspeed(layer_get_id("background_layer_1"), obj_player.phy_speed_x*0.8)
layer_vspeed(layer_get_id("background_layer_1"), obj_player.phy_speed_y*0.8)

layer_hspeed(layer_get_id("background_layer_2"), obj_player.phy_speed_x*0.4)
layer_vspeed(layer_get_id("background_layer_2"), obj_player.phy_speed_y*0.4)

layer_hspeed(layer_get_id("background_layer_3"), obj_player.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_3"), obj_player.phy_speed_y*0)

layer_hspeed(layer_get_id("background_layer_4"), obj_player.phy_speed_x*0)
layer_vspeed(layer_get_id("background_layer_4"), obj_player.phy_speed_y*0)

// Draw dust particles
/*
repeat(1)
   {
   var sprite, scale, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_ship_shield
	x_pos = global.wrap_border_left + random(global.play_area_width)
	y_pos = global.wrap_border_top + random(global.play_area_height)
	scale = 1 //random(0.5)+0.5
	color = make_color_hsv(random(255),255,255)
	angle = random(360)
	
	part_type_shape(dust_particle,spr_star_test);
	part_type_scale(dust_particle,scale,scale);
	part_type_color3(dust_particle,c_white,color,c_black);
	part_particles_create(global.part_system_below,x_pos,y_pos,dust_particle,1)
	part_particles_create(global.part_system_below,x_pos+global.play_area_width,y_pos,dust_particle,1)
	part_particles_create(global.part_system_below,x_pos-global.play_area_width,y_pos,dust_particle,1)
	part_particles_create(global.part_system_below,x_pos,y_pos+global.play_area_height,dust_particle,1)
	part_particles_create(global.part_system_below,x_pos,y_pos-global.play_area_height,dust_particle,1)
   }