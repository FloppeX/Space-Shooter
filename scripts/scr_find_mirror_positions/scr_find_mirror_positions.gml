// Find mirror positions

if phy_position_x <= 0.5 * room_width
mirror_x = phy_position_x + global.play_area_width
if phy_position_x > 0.5 * room_width
mirror_x = phy_position_x - global.play_area_width

if phy_position_y <= 0.5 * room_height
mirror_y = phy_position_y + global.play_area_height
if phy_position_y > 0.5 * room_height
mirror_y = phy_position_y - global.play_area_height
