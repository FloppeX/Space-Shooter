var temp_hue, temp_scale
for(var i = wormhole_segments; i > 0; i-=1;){
	temp_hue = hue_min+i*((hue_max-hue_min)/wormhole_segments)
	temp_scale = (wormhole_size * i/wormhole_segments)
	//temp_hue = temp_hue mod 60
	color = make_color_hsv(temp_hue,255,255 * temp_scale)
	rotation_dir_shifter = -rotation_dir_shifter
	draw_sprite_ext(spr_wormhole,-1,phy_position_x,phy_position_y,temp_scale,temp_scale,/*rotation_dir_shifter*/ 0.5 * i * (rotation-i*30),color,1)
	}
color = make_color_hsv(temp_hue,255,255)	

/*
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
	
