var temp_hue, temp_scale
for(var i = wormhole_segments; i > 0; i-=1;){
	temp_hue = hue_min+i*((hue_max-hue_min)/wormhole_segments)
	temp_scale = (wormhole_size * i/wormhole_segments)
	//temp_hue = temp_hue mod 60
	color = make_color_hsv(temp_hue,255,255 * temp_scale)
	rotation_dir_shifter = -rotation_dir_shifter
	draw_sprite_ext(spr_wormhole,-1,draw_position_x,draw_position_y,global.gui_scale * temp_scale,global.gui_scale * temp_scale,/*rotation_dir_shifter*/ 0.5 * i * (rotation-i*30),color,1)
	}
color = make_color_hsv(temp_hue,255,255)	

/*
var temp_hue
for(var i = wormhole_segments; i > 0; i-=1;){
	temp_hue = hue+i*30
	temp_hue = temp_hue mod 255
	color = make_color_hsv(temp_hue,255,255 * i/wormhole_segments)	
	draw_sprite_ext(spr_wormhole,-1,draw_position_x,draw_position_y,wormhole_size * i/wormhole_segments,wormhole_size * i/wormhole_segments,rotation-i*30,color,1)
	}