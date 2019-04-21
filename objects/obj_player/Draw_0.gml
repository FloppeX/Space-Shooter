for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	if ship_segment[i].ship_segment_right != noone
		draw_sprite_ext(spr_crossbar,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,draw_scale * segment_distance/24,draw_scale * segment_distance/24,-phy_rotation-90,c_white,alpha)
	if ship_segment[i].ship_segment_below != noone
		draw_sprite_ext(spr_crossbar,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,draw_scale * segment_distance/24,draw_scale * segment_distance/24,-phy_rotation+180,c_white,alpha)
	}

// Draw at this and other positions
if global.view_mode == 2{
	for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
		for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
			draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
	}
// TEST
if global.view_mode == 2{
	draw_set_font(global.font_small_text)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(phy_position_x,phy_position_y+120,string(phy_rotation))
	//draw_text(phy_position_x,phy_position_y+150,string(number_segments_placed))

	for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
		draw_text(ship_segment[i].phy_position_x+10,ship_segment[i].phy_position_y,i)
		if scr_exists(ship_segment[i].module){
			draw_circle_color(ship_segment[i].module.phy_position_x,ship_segment[i].module.phy_position_y,24,c_fuchsia,c_purple,1)
			if ship_segment[i].module.persistent == true
				draw_circle_color(ship_segment[i].module.phy_position_x,ship_segment[i].module.phy_position_y,18,c_lime,c_green,1)
		}
		}
	}