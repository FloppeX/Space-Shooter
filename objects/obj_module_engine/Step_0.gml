event_inherited();

var add_thrust = owner.add_thrust

if scr_exists(owner) and add_thrust > 0 and visible{

	//physics_apply_local_force(0,0,add_thrust * thrust,0)
	var temp_dist = point_distance(phy_position_x,phy_position_y,owner.phy_position_x,owner.phy_position_y)
	var temp_dir = point_direction(phy_position_x,phy_position_y,owner.phy_position_x,owner.phy_position_y)
	var thrust_point_offset = 0.5
	var thrust_point_x = phy_position_x + lengthdir_x(temp_dist * thrust_point_offset,temp_dir)
	var thrust_point_y = phy_position_y + lengthdir_y(temp_dist * thrust_point_offset,temp_dir)
	with(owner)
		physics_apply_force(thrust_point_x,thrust_point_y,lengthdir_x(other.thrust,-phy_rotation),lengthdir_y(other.thrust,-phy_rotation))
	
	flame_offset_distance = 18
	flame_offset_angle = 180
	part_type_speed(part_engine_flame,add_thrust,6*add_thrust,0,2);
	temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	part_type_direction(part_engine_flame,180-phy_rotation,180-phy_rotation,0,2);
	part_type_orientation(part_engine_flame,-phy_rotation,-phy_rotation,0,0,0)
	part_type_alpha2(part_engine_flame,owner.alpha,0);
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(flame_offset_distance,-phy_rotation+flame_offset_angle), phy_position_y+ lengthdir_y(flame_offset_distance,-phy_rotation+flame_offset_angle), part_engine_flame, 2);

	
	}

audio_emitter_gain(module_audio_emitter, add_thrust);
