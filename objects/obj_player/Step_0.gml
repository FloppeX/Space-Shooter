// Gamepad controls

if movement_disabled == false{
	gamepad_set_axis_deadzone(0, 0.1);

	rotation_value = gamepad_axis_value(0,gp_axislh);

	gamepad_set_axis_deadzone(0, 0);

	add_thrust = gamepad_button_value(0, gp_shoulderrb)

	if gamepad_button_check(0,gp_face1)
		gamepad_button[1] = true
	else gamepad_button[1] = false
	
	if gamepad_button_check(0,gp_face2)
		gamepad_button[2] = true
	else gamepad_button[2] = false
	
	if gamepad_button_check(0,gp_face3)
		gamepad_button[3] = true
	else gamepad_button[3] = false
		
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
	else gamepad_button[4] = false
	
}
	
if gamepad_button_check(0,gp_padu)
	global.zoom = global.zoom - 100

if gamepad_button_check(0,gp_padd)
	global.zoom = global.zoom + 100

if gamepad_button_check_pressed(0,gp_padl)
	global.view_mode = 1

if gamepad_button_check_pressed(0,gp_padr)
	global.view_mode = 2

if keyboard_check(vk_right){
		room_goto(rm_shop)
	}
	
if keyboard_check(vk_left){
		room_goto(rm_space)
	}

// Turn

phy_angular_velocity = rotation_value * rotation_force;
	
// Moving

if add_thrust
	{
	if phy_speed < max_speed
		physics_apply_local_force(0,0,add_thrust * thrust,0)
	//col = make_colour_hsv(230, 255,100+irandom(155));
	offset_distance = 46
	offset_angle = 149
	
	part_type_speed(part_engine_flame_player,3*add_thrust ,6*add_thrust,0,0);
	temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	part_type_direction(part_engine_flame_player,180-phy_rotation,180-phy_rotation,0,0);
	part_type_orientation(part_engine_flame_player,-phy_rotation,-phy_rotation,0,0,0)
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(offset_distance,-phy_rotation+offset_angle), phy_position_y+ lengthdir_y(offset_distance,-phy_rotation+offset_angle), part_engine_flame_player, 8);
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(offset_distance,-phy_rotation-offset_angle), phy_position_y+ lengthdir_y(offset_distance,-phy_rotation-offset_angle), part_engine_flame_player, 8);
	//part_particles_create(global.part_system_below, mirror_x+lengthdir_x(-38,-phy_rotation), phy_position_y+ lengthdir_y(-38,-phy_rotation), global.part_rocket_smoke, 3);
	//part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-38,-phy_rotation), mirror_y+ lengthdir_y(-38,-phy_rotation), global.part_rocket_smoke,3);


	}
	
// Stop ship from skidding
if add_thrust
	scr_counter_lateral_drift();

// Health

if obj_health <= 0{
	with(obj_module)
		instance_destroy();
	effect_create_above(ef_explosion,phy_position_x,phy_position_y,1,c_white)
	effect_create_above(ef_explosion,phy_position_x,phy_position_y,1,c_red)
	effect_create_above(ef_explosion,phy_position_x,phy_position_y,1,c_yellow)
	instance_destroy();
	}

// Set wrap boundaries for other objects

if phy_position_x < global.wrap_margin_player + global.wrap_margin_objects{
	global.wrap_border_left = phy_position_x - global.wrap_margin_objects;
	global.wrap_border_right = global.wrap_border_left + global.play_area_width ;
	}
if phy_position_x > room_width -( global.wrap_margin_player + global.wrap_margin_objects){
	global.wrap_border_right = phy_position_x + global.wrap_margin_objects;
	global.wrap_border_left = global.wrap_border_right - global.play_area_width ;

	}
if phy_position_y < global.wrap_margin_player + global.wrap_margin_objects{
	global.wrap_border_top = phy_position_y - global.wrap_margin_objects;
	global.wrap_border_bottom = global.wrap_border_top + global.play_area_height;
	}
if phy_position_y > room_height - (global.wrap_margin_player + global.wrap_margin_objects){
	global.wrap_border_bottom = phy_position_y + global.wrap_margin_objects;
	global.wrap_border_top = global.wrap_border_bottom  - global.play_area_height;
	}

// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room_player();

// Particle emitters


/*
part_emitter_region(global.part_system_below,dust_emitter,x-global.play_area_width,x+ global.play_area_width,y-global.play_area_height,y+global.play_area_height,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(global.part_system_below,dust_emitter,global.dust_particle,10);
