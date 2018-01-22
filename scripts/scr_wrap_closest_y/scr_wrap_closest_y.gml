// Takes: object,object that has mirror coords
// Returns: closest mirror coord y
var obj;
obj = argument0;
if phy_position_y > obj.phy_position_y
	if abs(phy_position_y - obj.phy_position_y) < abs(phy_position_y - (obj.phy_position_y + global.play_area_height))
		return obj.phy_position_y
	else return obj.phy_position_y + global.play_area_height
if phy_position_y < obj.phy_position_y
	if abs(phy_position_y - obj.phy_position_y) < abs(phy_position_y - (obj.phy_position_y - global.play_area_height))
		return obj.phy_position_y
	else return obj.phy_position_y - global.play_area_height
return 0;