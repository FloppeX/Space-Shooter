if scr_exists(owner){
	phy_position_x = owner.phy_position_x + lengthdir_x(timer * phy_speed,-owner.phy_rotation)
	phy_position_y = owner.phy_position_y + lengthdir_y(timer * phy_speed,-owner.phy_rotation)
	}