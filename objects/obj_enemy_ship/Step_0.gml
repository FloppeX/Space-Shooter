
//Health
if obj_health <= 0{
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	//part_type_destroy(part_engine_flame);
	scr_explode_object();
	instance_destroy();
	exit;
	}

// AI
	
// Set acceleration (may be changed later by ai behavior

target_speed = max_speed

// ai_mode 1 : fly around
// ai_mode 2 : attack player



if ai_mode == 1 {
	ai_timer -= 1;
	min_standoff_distance = 800
	max_standoff_distance = 1200
	distance_to_target = point_distance(phy_position_x,phy_position_y,obj_player.phy_position_x,obj_player.phy_position_y)
	if distance_to_target > min_standoff_distance and distance_to_target < max_standoff_distance{ //0.3 * global.play_area_width
		dir_to_target = scr_wrap_direction_to_closest_instance(obj_player)
		if angle_difference(-phy_rotation,dir_to_target) > 0
			target_dir = scr_wrap_direction_to_closest_instance(obj_player) + 90
		else 
			target_dir = scr_wrap_direction_to_closest_instance(obj_player) + 90
		}
	if distance_to_target < min_standoff_distance 
		target_dir = scr_wrap_direction_to_closest_instance(obj_player) + 180
	if distance_to_target > max_standoff_distance
		target_dir = scr_wrap_direction_to_closest_instance(obj_player)

	if ai_timer <= 0{

		ai_timer = 240
		if irandom(6) == 0{
			ai_mode = 2
			ai_timer = 600
			}
		}
	}
	
if ai_mode == 2 {

	target = scr_rocket_find_target_in_arc(obj_player,-phy_rotation,180)
	target_dir = scr_wrap_intercept_course(id,target,phy_speed + gun.muzzle_velocity)
	target_point_x = scr_wrap_closest_x(target);
	target_point_y = scr_wrap_closest_y(target);

	angle_diff = abs(angle_difference(-phy_rotation,target_dir));
	if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 600
		and angle_diff < 5
		shoot = true
	else 
		shoot = false
	if point_distance(phy_position_x,phy_position_y,target_point_x,target_point_y) < 300 {
		ai_mode = 1
		shoot = false
		}
	}
	
// Avoid teammates

collision_check_distance = 100
collision_check_radius= 75
closest_teammate = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_enemy_ship,false,true) 
if closest_teammate != noone{
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_teammate.phy_position_x,closest_teammate.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+120
	else 
		target_dir = temp_direction-120
	target_speed = 0.5 * max_speed
	}
	
// Avoid obstacles


collision_check_distance = 100
collision_check_radius= 200
closest_obstacle = collision_circle(phy_position_x+lengthdir_x(collision_check_distance,-phy_rotation),phy_position_y+lengthdir_y(collision_check_distance,-phy_rotation),collision_check_radius,obj_asteroid,false,true) 
if closest_obstacle != noone{
	temp_direction = point_direction(phy_position_x,phy_position_y,closest_obstacle.phy_position_x,closest_obstacle.phy_position_y)
	if angle_difference(-phy_rotation,temp_direction) >	0
		target_dir = temp_direction+90
	else 
		target_dir = temp_direction-90
	target_speed = 1 * max_speed
	}
	
// Turn

angle_diff = angle_difference(-phy_rotation,target_dir);
turn_value = clamp(angle_diff/20, -1, 1)
phy_angular_velocity = turn_value * rotation_force;	

// Apply thrust

if phy_speed < target_speed 
	thrust = max_thrust
else thrust = 0
physics_apply_local_force(0,0, thrust,0)

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

offset_distance = 25
	
part_type_speed(global.part_rocket_smoke,1,1,0,0.3);  
part_type_direction(global.part_rocket_smoke,-phy_rotation,-phy_rotation,0,0);
part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);
part_particles_create(global.part_system_below, mirror_x+lengthdir_x(-offset_distance,-phy_rotation), phy_position_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);
part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(-offset_distance,-phy_rotation), mirror_y+ lengthdir_y(-offset_distance,-phy_rotation), global.part_rocket_smoke, 3);

// Gun

gun.x = phy_position_x 
gun.y = phy_position_y 
gun.obj_rotation = -phy_rotation;
gun.hspeed = phy_speed_x
gun.vspeed = phy_speed_y
if shoot
	gun.shoot = true
else
	gun.shoot = false

// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room();