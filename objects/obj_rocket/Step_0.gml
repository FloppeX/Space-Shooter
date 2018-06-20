// Rocket stuff
timer -= phy_speed;

if timer <= 0
	obj_health = 0;
	
//Health

if obj_health = 0{
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = damage_color;
	
	instance_destroy();
	exit;
	}

// Accellerate

physics_apply_local_force(0,0, thrust,0)
	
// Targeting & turning

target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,targeting_arc,seek_range)
if target != noone
	target_dir = scr_wrap_intercept_course(id,target,phy_speed)
else target_dir = -phy_rotation
angle_diff = angle_difference(-phy_rotation,target_dir);


turn_value = clamp(angle_diff/10, -1, 1)
phy_angular_velocity = turn_value * rotation_speed;	

// Counter drift

scr_counter_lateral_drift();
	
// Smoke effect

part_type_speed(global.part_rocket_smoke_small,0,0,0,0);    
temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
part_type_direction(global.part_rocket_smoke_small,temp_dir+180,temp_dir+180,0,0);
part_type_orientation(global.part_rocket_smoke_small,temp_dir,temp_dir,0,0,0)
part_type_color1(global.part_rocket_smoke_small,color)
offset_distance = 12
part_particles_create(global.part_system_above, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
part_particles_create(global.part_system_above, mirror_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
part_particles_create(global.part_system_above, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), mirror_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke_small, 3);
	
// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();