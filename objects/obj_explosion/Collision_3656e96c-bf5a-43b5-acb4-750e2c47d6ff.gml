with(other){
	temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
	var x_force = lengthdir_x(other.force,temp_dir)
	var y_force = lengthdir_y(other.force,temp_dir)
	physics_apply_local_impulse(phy_com_x,phy_com_y,x_force,y_force)
	disabled_timer = 30
	}