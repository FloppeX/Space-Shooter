var temp_hue
for(var i = wormhole_segments; i > 0; i-=1;){
	temp_hue = hue+i*30
	temp_hue = temp_hue mod 255
	color = make_color_hsv(temp_hue,255,255 * i/wormhole_segments)	
	draw_sprite_ext(spr_wormhole,-1,draw_position_x,draw_position_y,wormhole_size * i/wormhole_segments,wormhole_size * i/wormhole_segments,rotation-i*30,color,1)
	}