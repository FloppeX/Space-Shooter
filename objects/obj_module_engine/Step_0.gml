event_inherited();

add_thrust = owner.add_thrust

if owner != noone and add_thrust
	{
	with(owner){
		if phy_speed < max_speed
		physics_apply_local_force(0,0,other.add_thrust * other.thrust,0)
		}
		//physics_apply_force(other.phy_position_x,other.phy_position_y,lengthdir_x(other.add_thrust * other.thrust,-other.phy_rotation),lengthdir_y(other.add_thrust * other.thrust,-other.phy_rotation))
	flame_offset_distance = 10
	flame_offset_angle = 180
	part_type_speed(part_engine_flame,0 ,6*add_thrust,0,0);
	temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	part_type_direction(part_engine_flame,180-phy_rotation,180-phy_rotation,0,0);
	part_type_orientation(part_engine_flame,-phy_rotation,-phy_rotation,0,0,0)
	part_type_alpha2(part_engine_flame,0.3 * owner.alpha,0);
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(flame_offset_distance,-phy_rotation+flame_offset_angle), phy_position_y+ lengthdir_y(flame_offset_distance,-phy_rotation+flame_offset_angle), part_engine_flame, 16);
	//part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(flame_offset_distance,-phy_rotation-flame_offset_angle), phy_position_y+ lengthdir_y(flame_offset_distance,-phy_rotation-flame_offset_angle), part_engine_flame, 8);
	}

audio_emitter_gain(module_audio_emitter,0.5* add_thrust);
