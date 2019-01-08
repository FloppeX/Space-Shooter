if destruction_timer == 0
	with(other){
		obj_health -= other.damage
		var temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
		var x_force = lengthdir_x(other.force,temp_dir)
		var y_force = lengthdir_y(other.force,temp_dir)
		physics_apply_local_impulse(phy_position_x,phy_position_y,x_force,y_force)
	}
		
