if phy_position_x < global.wrap_border_left 
	phy_position_x = mirror_x
if phy_position_x > global.wrap_border_right 
	phy_position_x = mirror_x
if phy_position_y < global.wrap_border_top
	phy_position_y = mirror_y
if phy_position_y > global.wrap_border_bottom
	phy_position_y = mirror_y
