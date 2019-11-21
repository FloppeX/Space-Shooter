if phy_position_x < global.wrap_border_left 
	phy_position_x = global.wrap_border_right 
if phy_position_x > global.wrap_border_right 
	phy_position_x = global.wrap_border_left 
if phy_position_y < global.wrap_border_top
	phy_position_y = global.wrap_border_bottom
if phy_position_y > global.wrap_border_bottom
	phy_position_y = global.wrap_border_top