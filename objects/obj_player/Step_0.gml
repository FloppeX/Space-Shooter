

// Start of step

image_angle = phy_rotation

// Gamepad controls

gamepad_set_axis_deadzone(0, 0.1);

rotation_value = gamepad_axis_value(0,gp_axislh);

gamepad_set_axis_deadzone(0, 0);

add_thrust = gamepad_button_value(0, gp_shoulderrb)

if gamepad_button_check(0,gp_face3)
	shoot_1 = 1
	else shoot_1 = 0;
	
if gamepad_button_check(0,gp_face2)
	shield = 1
	else shield = 0;
	
if gamepad_button_check(0,gp_face4)
	shoot_2 = 1
	else shoot_2 = 0;
	

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
	part_type_speed(part_engine_flame_player,add_thrust *0.5,add_thrust,0,0.3);            
	part_type_direction(part_engine_flame_player,180-phy_rotation,180-phy_rotation,0,0);    
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(offset_distance,-phy_rotation+offset_angle), phy_position_y+ lengthdir_y(offset_distance,-phy_rotation+offset_angle), part_engine_flame_player, 3);
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(offset_distance,-phy_rotation-offset_angle), phy_position_y+ lengthdir_y(offset_distance,-phy_rotation-offset_angle), part_engine_flame_player, 3);
	//part_particles_create(global.part_system_below, mirror_x+lengthdir_x(-38,-phy_rotation), phy_position_y+ lengthdir_y(-38,-phy_rotation), global.part_rocket_smoke, 3);
	//part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-38,-phy_rotation), mirror_y+ lengthdir_y(-38,-phy_rotation), global.part_rocket_smoke,3);


	}
	
// Stop ship from skidding
if add_thrust{
	travel_speed = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	forward_speed = max(0,abs(lengthdir_x(phy_speed,angle_difference(-phy_rotation,travel_direction))))
	lateral_drift_speed = lengthdir_y(travel_speed,angle_difference(-phy_rotation,travel_direction))
	lateral_drift_direction = -phy_rotation + 90;
	drift_resistance_force = drift_resistance * lateral_drift_speed * forward_speed
	drift_resistance_force_x = lengthdir_x(drift_resistance_force,lateral_drift_direction+180)
	drift_resistance_force_y = lengthdir_y(drift_resistance_force,lateral_drift_direction+180)

	physics_apply_force(phy_com_x,phy_com_y, drift_resistance_force_x, drift_resistance_force_y)
	}

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
	
// Modules

module_1.x = phy_position_x + lengthdir_x(36,-phy_rotation+45);
module_1.y = phy_position_y + lengthdir_y(36,-phy_rotation+45);
module_1.obj_rotation = -phy_rotation;
module_1.hspeed = phy_speed_x
module_1.vspeed = phy_speed_y
if shoot_1
	module_1.shoot = true
else
	module_1.shoot = false

module_2.x = phy_position_x + lengthdir_x(36,-phy_rotation-45);
module_2.y = phy_position_y + lengthdir_y(36,-phy_rotation-45);
module_2.obj_rotation = -phy_rotation;
module_2.hspeed = phy_speed_x
module_2.vspeed = phy_speed_y
if shoot_2
	module_2.shoot = true
else
	module_2.shoot = false

module_3.phy_position_x = phy_com_x
module_3.phy_position_y = phy_com_y
module_3.phy_rotation= phy_rotation;
module_3.hspeed = phy_speed_x
module_3.vspeed = phy_speed_y

scr_find_mirror_positions();

scr_wrap_room_player();

// Particle emitters

part_emitter_region(global.part_system_below,dust_emitter,x-0.6 * global.play_area_width,x+0.6 * global.play_area_width,y-0.6 * global.play_area_height,y+0.6 * global.play_area_height,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(global.part_system_below,dust_emitter,global.dust_particle,10);


