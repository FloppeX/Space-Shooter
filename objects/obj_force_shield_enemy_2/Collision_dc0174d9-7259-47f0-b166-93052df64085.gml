force_x = lengthdir_x(force*other.phy_mass,point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y))
force_y = lengthdir_y(force*other.phy_mass,point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y))
with (other)
	physics_apply_impulse(phy_position_x,phy_position_y,other.force_x,other.force_y)