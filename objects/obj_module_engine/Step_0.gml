event_inherited();

add_thrust = owner.add_thrust

if scr_exists(owner) and add_thrust > 0{
	if owner.energy > add_thrust * energy_cost{
		owner.energy -= add_thrust * energy_cost
		if owner.phy_speed < owner.max_speed
				physics_apply_local_force(0,0,add_thrust * thrust,0)

		flame_offset_distance = 18
		flame_offset_angle = 180
		part_type_speed(part_engine_flame,add_thrust,6*add_thrust,0,2);
		temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
		part_type_direction(part_engine_flame,180-phy_rotation,180-phy_rotation,0,2);
		part_type_orientation(part_engine_flame,-phy_rotation,-phy_rotation,0,0,0)
		part_type_alpha2(part_engine_flame,owner.alpha,0);
		part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(flame_offset_distance,-phy_rotation+flame_offset_angle), phy_position_y+ lengthdir_y(flame_offset_distance,-phy_rotation+flame_offset_angle), part_engine_flame, 2);
		}
	
	}

audio_emitter_gain(module_audio_emitter, add_thrust);
