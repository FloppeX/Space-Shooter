if done_warping 
	death_timer -= 1
if death_timer <= 0{
	next_level = room_duplicate(rm_space)
	room_goto (next_level)
	global.difficulty_level += 1;
	instance_destroy();
	}
	
hue_shift_timer -= 1;
if hue_shift_timer <= 0{
	hue_shift_timer = hue_shift_interval;
	hue += hue_shift_amount
	//hue = hue mod 20
	}
	
color = make_color_hsv(hue,255,255)	
rotation += rotation_speed

if !done_warping
	{
	//part_type_size(wormhole_particle,i,i,0,0);
	part_type_orientation(wormhole_particle,rotation,rotation,rotation_speed,0.02,1);
	part_type_direction(wormhole_particle,-rotation,-rotation,1,0);
	part_type_orientation(wormhole_particle,1.6*rotation,1.6*rotation,0,0,1); 
	part_type_speed(wormhole_particle,particle_speed,particle_speed,particle_speed_change,0);
	part_type_color2(wormhole_particle,color,c_black);
	//part_type_color_hsv(wormhole_particle,hue,hue,255,255,255,255); 
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, wormhole_particle, 4);
	}
	
warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)
	if warping_ship != noone
		with(warping_ship){
			disabled_timer = 10
			if draw_scale > 0
				draw_scale = 0.95 * draw_scale
			if draw_scale < 0.01{
				visible = false
				other.done_warping = true
				}
			temp_dist = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			force = 0.02 * sqr(temp_dist)
			temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(force,temp_dir),lengthdir_y(force,temp_dir))
			physics_apply_torque(2000)
			if phy_speed > 1
				phy_linear_damping = 4
			else 
				phy_linear_damping = 0.4
			}