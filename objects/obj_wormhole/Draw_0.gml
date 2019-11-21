var temp_hue, temp_scale
for(var i = wormhole_segments; i > 0; i-=1;){
	temp_hue = hue_min+i*((hue_max-hue_min)/wormhole_segments)
	temp_scale = (wormhole_size * i/wormhole_segments)
	//temp_hue = temp_hue mod 60
	color = make_color_hsv(temp_hue,255,255 * temp_scale)
	rotation_dir_shifter = -rotation_dir_shifter
	draw_sprite_ext(spr_wormhole,-1,phy_position_x,phy_position_y,temp_scale,temp_scale,/*rotation_dir_shifter*/ 0.5 * i * (rotation-i*30),color,1)
	}
color = make_color_hsv(temp_hue,255,255)	

if global.view_mode == 2{
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(x,y+200,depth)
	}
	