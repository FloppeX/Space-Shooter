var temp_hue
for(var i = 0; i < wormhole_size; i+=0.02;){
	temp_hue = hue-i*100
	if temp_hue < 0
		temp_hue += 255
	if temp_hue > 255
		temp_hue -= 255
	color = make_color_hsv(temp_hue,255,255)	
	draw_sprite_ext(spr_wormhole,-1,draw_position_x,draw_position_y,i,i,rotation-i*100,color,1)
	}