phy_rotation += rotation_speed;

if done_warping 
	death_timer -= 1
if death_timer <= 0{
	instance_destroy();
	}
	
hue_shift_timer -= 1;
if hue_shift_timer <= 0{
	hue_shift_timer = hue_shift_interval;
	hue += hue_shift_amount
	hue = hue mod 255
	}
	
color = make_color_hsv(hue,255,255)	
rotation += rotation_speed

if !done_warping
	{
	//part_type_size(wormhole_particle,i,i,0,0);
	//part_type_orientation(wormhole_particle,rotation,rotation,rotation_speed,0.02,1);
	part_type_direction(wormhole_particle,-rotation,-rotation,1,0);
	part_type_orientation(wormhole_particle,1.6*rotation,1.6*rotation,1,0,1); 
	part_type_speed(wormhole_particle,particle_speed,particle_speed,particle_speed_change,0);
	part_type_color2(wormhole_particle,color,c_black);
	//part_type_color_hsv(wormhole_particle,hue,hue,255,255,255,255); 
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, wormhole_particle, 1);
	}
