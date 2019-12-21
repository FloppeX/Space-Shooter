var x_diff = 0
var y_diff = 0

if phy_position_x < global.wrap_border_left 
	x_diff = global.play_area_width
if phy_position_x > global.wrap_border_right 
	x_diff = -global.play_area_width
if phy_position_y < global.wrap_border_top
	y_diff = global.play_area_height
if phy_position_y > global.wrap_border_bottom
	y_diff = -global.play_area_height

phy_position_x += x_diff
phy_position_y += y_diff


/*
if phy_position_x < global.wrap_border_left 
	phy_position_x = mirror_x
if phy_position_x > global.wrap_border_right 
	phy_position_x = mirror_x
if phy_position_y < global.wrap_border_top
	phy_position_y = mirror_y
if phy_position_y > global.wrap_border_bottom
	phy_position_y = mirror_y
