// Rocket stuff
timer -= phy_speed;

if timer <= 0
	obj_health = 0;
	
//Health
if obj_health = 0{
	/*
	effect_create_above(ef_explosion, phy_position_x+lengthdir_x(+10,-phy_rotation), phy_position_y+ lengthdir_y(+10,-phy_rotation),0,c_white)
	effect_create_above(ef_explosion, phy_position_x+lengthdir_x(+10,-phy_rotation), phy_position_y+ lengthdir_y(+10,-phy_rotation),0,c_red)
	effect_create_above(ef_explosion, phy_position_x+lengthdir_x(+10,-phy_rotation), phy_position_y+ lengthdir_y(+10,-phy_rotation),0,c_yellow)
	*/
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = damage_color;
	
	//part_type_destroy(part_engine_flame);
	instance_destroy();
	exit;
	}

	
// Accellerate

physics_apply_local_force(0,0, thrust,0)
	
// Targeting & turning

target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,targeting_arc)
if target != noone
	target_dir = scr_wrap_intercept_course(id,target,phy_speed)
else target_dir = -phy_rotation
angle_diff = angle_difference(-phy_rotation,target_dir);


turn_value = clamp(angle_diff/10, -1, 1)
phy_angular_velocity = turn_value * rotation_force;	

// Counter drift
travel_speed = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
forward_speed = max(0,abs(lengthdir_x(phy_speed,angle_difference(-phy_rotation,travel_direction))))
lateral_drift_speed = lengthdir_y(travel_speed,angle_difference(-phy_rotation,travel_direction))
lateral_drift_direction = -phy_rotation + 90;
drift_resistance_force = drift_resistance * lateral_drift_speed * forward_speed
drift_resistance_force_x = lengthdir_x(drift_resistance_force,lateral_drift_direction+180)
drift_resistance_force_y = lengthdir_y(drift_resistance_force,lateral_drift_direction+180)
physics_apply_force(phy_com_x,phy_com_y, drift_resistance_force_x , drift_resistance_force_y)
	
// Smoke effect

part_type_speed(global.part_rocket_smoke_small,1,1,0,0.3);    
part_type_direction(global.part_rocket_smoke_small,-phy_rotation,-phy_rotation,0,0);
offset_distance = 12
part_particles_create(global.part_system_above, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
part_particles_create(global.part_system_above, mirror_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
part_particles_create(global.part_system_above, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), mirror_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
	
// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();