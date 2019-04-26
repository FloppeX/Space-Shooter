

if global.view_mode == 2{
	with(obj_player)
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
			if scr_exists(ship_segment[i].module)
				draw_line_color(0,0,ship_segment[i].module.phy_position_x,ship_segment[i].module.phy_position_y,c_red,c_red)
			
	with(obj_shop)
		for(var i = 0; i < array_length_1d(shop_segments); i+=1;)
			if scr_exists(shop_segments[i].module)
				draw_line_color(6000,6000,shop_segments[i].module.phy_position_x,shop_segments[i].module.phy_position_y,c_green,c_green)
	}