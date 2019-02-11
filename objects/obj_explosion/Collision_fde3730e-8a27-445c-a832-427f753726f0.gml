/*color = c_lime
number = phy_collision_points
	
var collision_coords = scr_collision_line_point(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y,other,1,1)
part_particles_create_color(global.part_system_above,collision_coords[0] ,collision_coords[1] , global.part_weapon_splat,c_lime, 6);
	
	
	/*
	var temp_dir = point_direction(phy_position_x,phy_position_y,phy_collision_x[i], phy_collision_y[i])
	var x_force = lengthdir_x(force,temp_dir)
	var y_force = lengthdir_y(force,temp_dir)
	with(other)
		physics_apply_impulse(other.phy_collision_x[i], other.phy_collision_y[i],other.x_force,other.y_force)
	*/
