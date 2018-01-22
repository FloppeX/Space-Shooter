// Takes: object that has mirror coords
// Returns: closest mirror coord x
var obj;
obj = argument0;
if phy_position_x > obj.phy_position_x
	if abs(phy_position_x - obj.phy_position_x) < abs(phy_position_x - (obj.phy_position_x + global.play_area_width))
		return obj.phy_position_x
	else return obj.phy_position_x + global.play_area_width
if phy_position_x < obj.phy_position_x
	if abs(phy_position_x - obj.phy_position_x) < abs(phy_position_x - (obj.phy_position_x - global.play_area_width))
		return obj.phy_position_x
	else return obj.phy_position_x - global.play_area_width
return 0;