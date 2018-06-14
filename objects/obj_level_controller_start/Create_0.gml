// Create a menu

start_menu = instance_create_depth(0.2*display_get_width(),0.4*display_get_height(),0,obj_start_menu)

// Create some asteroids

number_of_asteroids = 10
number_of_enemies = 10

while(number_of_asteroids > 0){
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top
		}
	else{
		temp_xpos = global.wrap_border_left
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	new_asteroid =  instance_create_depth(temp_xpos,temp_ypos,0,obj_asteroid_big);
	number_of_asteroids -= 1
	}
	
while(number_of_enemies > 0){
	var i = irandom(1)
	if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top +100
		}
	else{
		temp_xpos = global.wrap_border_left +100
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1)
	number_of_enemies -= 1
	}
	
// Sound

audio_stop_all()
level_music = music_sci_fi_open_looping
audio_play_sound(level_music,1,1)

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
	alpha =  random(0.2)+0.3
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
	alpha =  random(0.5)+0.5
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
   
   
for (var i = 0; i< 5; i++;){
	var sprite, x_pos, y_pos, x_scale,y_scale,col,alpha,angle;
	sprite = spr_background_1
	x_pos = global.wrap_border_left + random( global.play_area_width)
	y_pos = global.wrap_border_top + random( global.play_area_height)
	x_scale =  random(6)+4
	y_scale =  random(6)+4
	color = make_color_hsv(random(255),255,255)
	alpha =  random(0.2)+0.8
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