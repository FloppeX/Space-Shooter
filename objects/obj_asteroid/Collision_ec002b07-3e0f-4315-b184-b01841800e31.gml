with (other){
	obj_health -= other.damage
	disabled_timer += 30
	temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
	var x_force = lengthdir_x(other.push_force,temp_dir)
	var y_force = lengthdir_y(other.push_force,temp_dir)
	physics_apply_impulse(phy_position_x,phy_position_y,x_force,y_force)
	}