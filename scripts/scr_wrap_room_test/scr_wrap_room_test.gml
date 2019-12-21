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

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
		ship_segment[i].phy_position_x += x_diff
		ship_segment[i].phy_position_y += y_diff
			if scr_exists(ship_segment[i].module){
					ship_segment[i].module.phy_position_x += x_diff
					ship_segment[i].module.phy_position_y += y_diff
				}
			}