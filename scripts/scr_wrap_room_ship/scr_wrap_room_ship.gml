if phy_position_x < global.wrap_border_left 
	phy_position_x = mirror_x
if phy_position_x > global.wrap_border_right 
	phy_position_x = mirror_x
if phy_position_y < global.wrap_border_top
	phy_position_y = mirror_y
if phy_position_y > global.wrap_border_bottom
	phy_position_y = mirror_y

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i])
		with(ship_segment[i]){
			scr_wrap_room()
			if module != noone
				with(module){
					scr_wrap_room()
				}
			}
