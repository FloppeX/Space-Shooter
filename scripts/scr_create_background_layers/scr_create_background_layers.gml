// Create background sprites

for (var i = 0; i< 300; i++;)
   {
   var sprite, scale, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_star
	x_pos = global.wrap_border_left + random( global.play_area_width)
	y_pos = global.wrap_border_top + random( global.play_area_height)
	scale = random(0.5)+0.5
	x_scale = scale
	y_scale =  scale
	color = make_color_hsv(random(255),random(20)+80,255)
	alpha =  random(0.5)+0.5
	angle = random(360)
	
	background_sprite_0[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos-global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_0[i],  x_scale);
	layer_sprite_yscale(background_sprite_0[i],  y_scale);
	layer_sprite_blend(background_sprite_0[i], color);
	layer_sprite_alpha(background_sprite_0[i], alpha);
	layer_sprite_angle(background_sprite_0[i], angle);
	
	background_sprite_1[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_1[i],  x_scale);
	layer_sprite_yscale(background_sprite_1[i],  y_scale);
	layer_sprite_blend(background_sprite_1[i], color);
	layer_sprite_alpha(background_sprite_1[i], alpha);
	layer_sprite_angle(background_sprite_1[i], angle);
	
	background_sprite_2[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos+global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_2[i],  x_scale);
	layer_sprite_yscale(background_sprite_2[i],  y_scale);
	layer_sprite_blend(background_sprite_2[i], color);
	layer_sprite_alpha(background_sprite_2[i], alpha);
	layer_sprite_angle(background_sprite_2[i], angle);
	
	background_sprite_3[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos-global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_3[i],  x_scale);
	layer_sprite_yscale(background_sprite_3[i],  y_scale);
	layer_sprite_blend(background_sprite_3[i], color);
	layer_sprite_alpha(background_sprite_3[i], alpha);
	layer_sprite_angle(background_sprite_3[i], angle);
	
	background_sprite_4[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos,y_pos, sprite);
	layer_sprite_xscale(background_sprite_4[i],  x_scale);
	layer_sprite_yscale(background_sprite_4[i],  y_scale);
	layer_sprite_blend(background_sprite_4[i], color);
	layer_sprite_alpha(background_sprite_4[i], alpha);
	layer_sprite_angle(background_sprite_4[i], angle);
	
	background_sprite_5[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos+global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_5[i],  x_scale);
	layer_sprite_yscale(background_sprite_5[i],  y_scale);
	layer_sprite_blend(background_sprite_5[i], color);
	layer_sprite_alpha(background_sprite_5[i], alpha);
	layer_sprite_angle(background_sprite_5[i], angle);
	
	background_sprite_6[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos-global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_6[i],  x_scale);
	layer_sprite_yscale(background_sprite_6[i],  y_scale);
	layer_sprite_blend(background_sprite_6[i], color);
	layer_sprite_alpha(background_sprite_6[i], alpha);
	layer_sprite_angle(background_sprite_6[i], angle);
	
	background_sprite_7[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_7[i],  x_scale);
	layer_sprite_yscale(background_sprite_7[i],  y_scale);
	layer_sprite_blend(background_sprite_7[i], color);
	layer_sprite_alpha(background_sprite_7[i], alpha);
	layer_sprite_angle(background_sprite_7[i], angle);
	
	background_sprite_8[i] = layer_sprite_create(layer_get_id("background_layer_1"),x_pos+global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_8[i],  x_scale);
	layer_sprite_yscale(background_sprite_8[i],  y_scale);
	layer_sprite_blend(background_sprite_8[i], color);
	layer_sprite_alpha(background_sprite_8[i], alpha);
	layer_sprite_angle(background_sprite_8[i], angle);
   }

for (var i = 0; i< 400; i++;)
   {
   
   var sprite, scale, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_star
	x_pos = global.wrap_border_left + random( global.play_area_width)
	y_pos = global.wrap_border_top + random( global.play_area_height)
	scale = random(0.75)+0.75
	x_scale = scale
	y_scale =  scale
	color = make_color_hsv(random(255),random(20)+80,255)
	alpha =  random(0.4)+0.6
	angle = random(360)
	
	background_sprite_0[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos-global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_0[i],  x_scale);
	layer_sprite_yscale(background_sprite_0[i],  y_scale);
	layer_sprite_blend(background_sprite_0[i], color);
	layer_sprite_alpha(background_sprite_0[i], alpha);
	layer_sprite_angle(background_sprite_0[i], angle);
	
	background_sprite_1[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_1[i],  x_scale);
	layer_sprite_yscale(background_sprite_1[i],  y_scale);
	layer_sprite_blend(background_sprite_1[i], color);
	layer_sprite_alpha(background_sprite_1[i], alpha);
	layer_sprite_angle(background_sprite_1[i], angle);
	
	background_sprite_2[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos+global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_2[i],  x_scale);
	layer_sprite_yscale(background_sprite_2[i],  y_scale);
	layer_sprite_blend(background_sprite_2[i], color);
	layer_sprite_alpha(background_sprite_2[i], alpha);
	layer_sprite_angle(background_sprite_2[i], angle);
	
	background_sprite_3[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos-global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_3[i],  x_scale);
	layer_sprite_yscale(background_sprite_3[i],  y_scale);
	layer_sprite_blend(background_sprite_3[i], color);
	layer_sprite_alpha(background_sprite_3[i], alpha);
	layer_sprite_angle(background_sprite_3[i], angle);
	
	background_sprite_4[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos,y_pos, sprite);
	layer_sprite_xscale(background_sprite_4[i],  x_scale);
	layer_sprite_yscale(background_sprite_4[i],  y_scale);
	layer_sprite_blend(background_sprite_4[i], color);
	layer_sprite_alpha(background_sprite_4[i], alpha);
	layer_sprite_angle(background_sprite_4[i], angle);
	
	background_sprite_5[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos+global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_5[i],  x_scale);
	layer_sprite_yscale(background_sprite_5[i],  y_scale);
	layer_sprite_blend(background_sprite_5[i], color);
	layer_sprite_alpha(background_sprite_5[i], alpha);
	layer_sprite_angle(background_sprite_5[i], angle);
	
	background_sprite_6[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos-global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_6[i],  x_scale);
	layer_sprite_yscale(background_sprite_6[i],  y_scale);
	layer_sprite_blend(background_sprite_6[i], color);
	layer_sprite_alpha(background_sprite_6[i], alpha);
	layer_sprite_angle(background_sprite_6[i], angle);
	
	background_sprite_7[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_7[i],  x_scale);
	layer_sprite_yscale(background_sprite_7[i],  y_scale);
	layer_sprite_blend(background_sprite_7[i], color);
	layer_sprite_alpha(background_sprite_7[i], alpha);
	layer_sprite_angle(background_sprite_7[i], angle);
	
	background_sprite_8[i] = layer_sprite_create(layer_get_id("background_layer_2"),x_pos+global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_8[i],  x_scale);
	layer_sprite_yscale(background_sprite_8[i],  y_scale);
	layer_sprite_blend(background_sprite_8[i], color);
	layer_sprite_alpha(background_sprite_8[i], alpha);
	layer_sprite_angle(background_sprite_8[i], angle);
   }
   
for (var i = 0; i< 600; i++;)
   {
   
   var sprite, scale, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_star
	x_pos = global.wrap_border_left + random( global.play_area_width)
	y_pos = global.wrap_border_top + random( global.play_area_height)
	scale = random(1)+1
	x_scale = scale
	y_scale =  scale
	color = make_color_hsv(random(255),random(20)+80,255)
	alpha =  random(0.5)+1
	angle = random(360)
	
	background_sprite_0[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos-global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_0[i],  x_scale);
	layer_sprite_yscale(background_sprite_0[i],  y_scale);
	layer_sprite_blend(background_sprite_0[i], color);
	layer_sprite_alpha(background_sprite_0[i], alpha);
	layer_sprite_angle(background_sprite_0[i], angle);
	
	background_sprite_1[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_1[i],  x_scale);
	layer_sprite_yscale(background_sprite_1[i],  y_scale);
	layer_sprite_blend(background_sprite_1[i], color);
	layer_sprite_alpha(background_sprite_1[i], alpha);
	layer_sprite_angle(background_sprite_1[i], angle);
	
	background_sprite_2[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos+global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_2[i],  x_scale);
	layer_sprite_yscale(background_sprite_2[i],  y_scale);
	layer_sprite_blend(background_sprite_2[i], color);
	layer_sprite_alpha(background_sprite_2[i], alpha);
	layer_sprite_angle(background_sprite_2[i], angle);
	
	background_sprite_3[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos-global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_3[i],  x_scale);
	layer_sprite_yscale(background_sprite_3[i],  y_scale);
	layer_sprite_blend(background_sprite_3[i], color);
	layer_sprite_alpha(background_sprite_3[i], alpha);
	layer_sprite_angle(background_sprite_3[i], angle);
	
	background_sprite_4[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos,y_pos, sprite);
	layer_sprite_xscale(background_sprite_4[i],  x_scale);
	layer_sprite_yscale(background_sprite_4[i],  y_scale);
	layer_sprite_blend(background_sprite_4[i], color);
	layer_sprite_alpha(background_sprite_4[i], alpha);
	layer_sprite_angle(background_sprite_4[i], angle);
	
	background_sprite_5[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos+global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_5[i],  x_scale);
	layer_sprite_yscale(background_sprite_5[i],  y_scale);
	layer_sprite_blend(background_sprite_5[i], color);
	layer_sprite_alpha(background_sprite_5[i], alpha);
	layer_sprite_angle(background_sprite_5[i], angle);
	
	background_sprite_6[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos-global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_6[i],  x_scale);
	layer_sprite_yscale(background_sprite_6[i],  y_scale);
	layer_sprite_blend(background_sprite_6[i], color);
	layer_sprite_alpha(background_sprite_6[i], alpha);
	layer_sprite_angle(background_sprite_6[i], angle);
	
	background_sprite_7[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_7[i],  x_scale);
	layer_sprite_yscale(background_sprite_7[i],  y_scale);
	layer_sprite_blend(background_sprite_7[i], color);
	layer_sprite_alpha(background_sprite_7[i], alpha);
	layer_sprite_angle(background_sprite_7[i], angle);
	
	background_sprite_8[i] = layer_sprite_create(layer_get_id("background_layer_3"),x_pos+global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_8[i],  x_scale);
	layer_sprite_yscale(background_sprite_8[i],  y_scale);
	layer_sprite_blend(background_sprite_8[i], color);
	layer_sprite_alpha(background_sprite_8[i], alpha);
	layer_sprite_angle(background_sprite_8[i], angle);
   }
   
   
for (var i = 0; i< 20; i++;){
	var sprite, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_background_blob//spr_background_2
	x_pos = global.wrap_border_left + random( global.play_area_width)
	y_pos = global.wrap_border_top + random( global.play_area_height)
	x_scale = random(6)+6// random(3)+1
	y_scale = random(6)+6// random(3)+1
	color = make_color_hsv(random(255),255,255)
	alpha = random(0.1)+0.08// random(0.1)+0.9
	angle = random(360)
	
	background_sprite_0[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos-global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_0[i],  x_scale);
	layer_sprite_yscale(background_sprite_0[i],  y_scale);
	layer_sprite_blend(background_sprite_0[i], color);
	layer_sprite_alpha(background_sprite_0[i], alpha);
	layer_sprite_angle(background_sprite_0[i], angle);
	
	background_sprite_1[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_1[i],  x_scale);
	layer_sprite_yscale(background_sprite_1[i],  y_scale);
	layer_sprite_blend(background_sprite_1[i], color);
	layer_sprite_alpha(background_sprite_1[i], alpha);
	layer_sprite_angle(background_sprite_1[i], angle);
	
	background_sprite_2[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos+global.play_area_width,y_pos-global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_2[i],  x_scale);
	layer_sprite_yscale(background_sprite_2[i],  y_scale);
	layer_sprite_blend(background_sprite_2[i], color);
	layer_sprite_alpha(background_sprite_2[i], alpha);
	layer_sprite_angle(background_sprite_2[i], angle);
	
	background_sprite_3[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos-global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_3[i],  x_scale);
	layer_sprite_yscale(background_sprite_3[i],  y_scale);
	layer_sprite_blend(background_sprite_3[i], color);
	layer_sprite_alpha(background_sprite_3[i], alpha);
	layer_sprite_angle(background_sprite_3[i], angle);
	
	background_sprite_4[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos,y_pos, sprite);
	layer_sprite_xscale(background_sprite_4[i],  x_scale);
	layer_sprite_yscale(background_sprite_4[i],  y_scale);
	layer_sprite_blend(background_sprite_4[i], color);
	layer_sprite_alpha(background_sprite_4[i], alpha);
	layer_sprite_angle(background_sprite_4[i], angle);
	
	background_sprite_5[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos+global.play_area_width,y_pos, sprite);
	layer_sprite_xscale(background_sprite_5[i],  x_scale);
	layer_sprite_yscale(background_sprite_5[i],  y_scale);
	layer_sprite_blend(background_sprite_5[i], color);
	layer_sprite_alpha(background_sprite_5[i], alpha);
	layer_sprite_angle(background_sprite_5[i], angle);
	
	background_sprite_6[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos-global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_6[i],  x_scale);
	layer_sprite_yscale(background_sprite_6[i],  y_scale);
	layer_sprite_blend(background_sprite_6[i], color);
	layer_sprite_alpha(background_sprite_6[i], alpha);
	layer_sprite_angle(background_sprite_6[i], angle);
	
	background_sprite_7[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_7[i],  x_scale);
	layer_sprite_yscale(background_sprite_7[i],  y_scale);
	layer_sprite_blend(background_sprite_7[i], color);
	layer_sprite_alpha(background_sprite_7[i], alpha);
	layer_sprite_angle(background_sprite_7[i], angle);
	
	background_sprite_8[i] = layer_sprite_create(layer_get_id("background_layer_4"),x_pos+global.play_area_width,y_pos+global.play_area_height, sprite);
	layer_sprite_xscale(background_sprite_8[i],  x_scale);
	layer_sprite_yscale(background_sprite_8[i],  y_scale);
	layer_sprite_blend(background_sprite_8[i], color);
	layer_sprite_alpha(background_sprite_8[i], alpha);
	layer_sprite_angle(background_sprite_8[i], angle);
	
   }