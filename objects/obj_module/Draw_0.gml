
for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

if global.view_mode == 2{
	draw_set_font(font_small_text)
	draw_text(phy_position_x,phy_position_y +70,"activation_button: " + string(activation_button))
	}
/*
for(var i = 0; i < array_length_1d(description_lines); i+=1;)
			draw_text(phy_position_x,phy_position_y+20*i,description_lines[i])