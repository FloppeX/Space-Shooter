hue += hue_shift_speed
//color = make_color_hsv(hue,255,255)
rotation += rotation_speed
                          
part_type_color2(wormhole_particle,color,c_black);              
part_type_orientation(wormhole_particle,rotation,rotation,0,0,1);     

//for (var i = 0; i <= 1; i += 0.01)
{
	//part_type_size(wormhole_particle,i,i,0,0);
	part_type_orientation(wormhole_particle,rotation,rotation,rotation_speed,0.1,1);
	part_type_color_hsv(wormhole_particle,hue,hue,255,255,255,255); 
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, wormhole_particle, 1);
	}
	
warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)
	if warping_ship != noone
		with(warping_ship){
			disabled_timer = 10
			if draw_scale > 0
				draw_scale = 0.99 * draw_scale
			temp_dist = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			force = 0.04 * sqr(temp_dist)
			temp_dir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(force,temp_dir),lengthdir_y(force,temp_dir))
			physics_apply_torque(4000)
			}