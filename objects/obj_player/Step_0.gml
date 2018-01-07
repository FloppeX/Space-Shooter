// Gamepad controls

if controls_disabled == false{
	gamepad_set_axis_deadzone(0, 0.1);

	rotation_value = gamepad_axis_value(0,gp_axislh);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2
		target_rotation = point_direction(0,0, gamepad_axis_value(0,gp_axislh), gamepad_axis_value(0,gp_axislv))
	
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

	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
	else gamepad_button[4] = false
	
	if gamepad_button_check(0,gp_face4)
		gamepad_button[4] = true
	else gamepad_button[4] = false
}

if keyboard_check(vk_right){
		room_goto(rm_shop)
	}
	
if keyboard_check(vk_left){
		room_goto(rm_space)
	}
	
if keyboard_check_pressed(vk_up){
		map_scale += 0.1
	}
if keyboard_check_pressed(vk_down){
		map_scale -= 0.1
	}

// Turn
control_mode = 2

phy_rotation = (phy_rotation + 360) mod 360
if control_mode == 1
	phy_angular_velocity = rotation_value * rotation_force;
if control_mode == 2{
	
	rotation_value = angle_difference(-phy_rotation,target_rotation)/10
	rotation_value = clamp(rotation_value,-1,1)
	rotation_value = rotation_value * left_stick_value
	phy_angular_velocity = rotation_value * rotation_force
	}
	
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
	part_type_alpha2(part_engine_flame_player,0.3 * alpha,0);
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
	for(var i = 0; i < 7; i+=1;)
		with(ship_modules[i])
			instance_destroy();
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	instance_destroy();
	}

// Set wrap boundaries for other objects

global.wrap_border_left = phy_position_x - 0.5 * global.play_area_width;
global.wrap_border_right = phy_position_x + 0.5 * global.play_area_width;
global.wrap_border_top = phy_position_y - 0.5 * global.play_area_height;
global.wrap_border_bottom = phy_position_y + 0.5 * global.play_area_height;

// Find mirror positions

scr_find_mirror_positions();

// Wrap room if needed

scr_wrap_room_player();

// TEST

//event_perform()

// Particle emitters

/*
part_emitter_region(global.part_system_below,dust_emitter,x-global.play_area_width,x+ global.play_area_width,y-global.play_area_height,y+global.play_area_height,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(global.part_system_below,dust_emitter,global.dust_particle,10);
*/

// Energy

if energy < max_energy
	energy += energy_increase
if energy > max_energy
	energy = max_energy