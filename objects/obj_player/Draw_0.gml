for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	if ship_segment[i].ship_segment_right != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_right.phy_position_x,ship_segment[i].ship_segment_right.phy_position_y,4,c_gray,c_dkgray)
	if ship_segment[i].ship_segment_below != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_below.phy_position_x,ship_segment[i].ship_segment_below.phy_position_y,4,c_gray,c_dkgray)	
	if ship_segment[i].ship_segment_right != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_right.phy_position_x,ship_segment[i].ship_segment_right.phy_position_y,1,c_gray,c_gray)
	if ship_segment[i].ship_segment_below != noone
		draw_line_width_color(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,ship_segment[i].ship_segment_below.phy_position_x,ship_segment[i].ship_segment_below.phy_position_y,1,c_gray,c_gray)	
	}

// Draw at this and other positions

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

// TEST

draw_set_font(global.font_menu)
draw_set_color(c_white)
//draw_text(phy_position_x,phy_position_y+120,string(number_of_segments))
//draw_text(phy_position_x,phy_position_y+150,string(number_segments_placed))