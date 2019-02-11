

//Draw using particles... 
if !done_warping 
	{
	//part_type_size(wormhole_particle,i,i,0,0);
	//part_type_orientation(wormhole_particle,rotation,rotation,rotation_speed,0.02,1);
	part_type_direction(global.wormhole_particle_start,0,0,0,0)//-rotation,-rotation,1,0);
	part_type_orientation(global.wormhole_particle_start,rotation,rotation,1,0,1); 
	part_type_speed(global.wormhole_particle_start,0,0,0,0)//particle_speed,particle_speed,particle_speed_change,0);
	part_type_color2(global.wormhole_particle_start,c_black,color)//c_black,color);
	//part_type_alpha2(global.wormhole_particle_start,0,1); 
	//part_type_color_hsv(wormhole_particle,hue,hue,255,255,255,255); 
	part_particles_create(global.part_system_below_2, phy_position_x, phy_position_y, global.wormhole_particle_start, 1);
	part_particles_create(global.part_system_below_2, mirror_x, phy_position_y, global.wormhole_particle_start, 1);
	part_particles_create(global.part_system_below_2, phy_position_x, mirror_y, global.wormhole_particle_start, 1);
	part_particles_create(global.part_system_below_2, mirror_x, mirror_y, global.wormhole_particle_start, 1);
	
	}
	
/*
if !done_warping and life_timer >= 50
	{
	//part_type_size(wormhole_particle,i,i,0,0);
	//part_type_orientation(wormhole_particle,rotation,rotation,rotation_speed,0.02,1);
	part_type_direction(global.wormhole_particle_end,0,0,0,0)//-rotation,-rotation,1,0);
	part_type_orientation(global.wormhole_particle_end,rotation,rotation,1,0,1); 
	part_type_speed(global.wormhole_particle_end,0,0,0,0)//,particle_speed,particle_speed,particle_speed_change,0);
	part_type_color2(global.wormhole_particle_end,color,c_black)//color_2,c_black);
	//part_type_alpha2(global.wormhole_particle_end,1,0); 
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, global.wormhole_particle_end, 1);
	part_particles_create(global.part_system_below, mirror_x, phy_position_y, global.wormhole_particle_end, 1);
	part_particles_create(global.part_system_below, phy_position_x, mirror_y, global.wormhole_particle_end, 1);
	part_particles_create(global.part_system_below, mirror_x, mirror_y, global.wormhole_particle_end, 1);
	}
	
