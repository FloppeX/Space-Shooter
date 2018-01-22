if global.view_mode == 2{
	draw_set_color(c_yellow)
	//draw_triangle(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(seek_range,-phy_rotation-targeting_arc*0.5),phy_position_y+lengthdir_y(seek_range,-phy_rotation-targeting_arc*0.5),phy_position_x+lengthdir_x(seek_range,-phy_rotation+targeting_arc*0.5),phy_position_y+lengthdir_y(seek_range,-phy_rotation+targeting_arc*0.5),true)
	draw_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(seek_range,-phy_rotation-targeting_arc*0.5),phy_position_y+lengthdir_y(seek_range,-phy_rotation-targeting_arc*0.5))
	draw_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(seek_range,-phy_rotation+targeting_arc*0.5),phy_position_y+lengthdir_y(seek_range,-phy_rotation+targeting_arc*0.5))
	for(var i = -targeting_arc*0.5; i < targeting_arc*0.5; i+=targeting_arc*0.1;)
		draw_line(phy_position_x+lengthdir_x(seek_range,-phy_rotation+i),phy_position_y+lengthdir_y(seek_range,-phy_rotation+i),phy_position_x+lengthdir_x(seek_range,-phy_rotation+i+targeting_arc*0.1),phy_position_y+lengthdir_y(seek_range,-phy_rotation+i+targeting_arc*0.1))
	}