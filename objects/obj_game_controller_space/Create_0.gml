randomize();

// Base settings

game_set_speed(60,gamespeed_fps)
game_paused = false;

// View settings

global.view_mode = 1
global.zoom = 600
temp_zoom = 400


// Graphics settings

draw_enable_swf_aa(true);
global.aa_level = 0
draw_set_swf_aa_level(global.aa_level);

//global.obj_to_center_view_on = noone; // This is the object that the view centers on. Will be set to player

// Depth

depth = 20

// Play area settings

room_width = 6000;
room_height = 6000;

global.wrap_margin_player = 1000;
global.wrap_margin_objects = 1000;

global.viewport_width = view_get_wport(0);
global.viewport_height = view_get_hport(0);

global.play_area_width = room_width - 2 * global.wrap_margin_player;
global.play_area_height = room_height - 2 * global.wrap_margin_player;

global.wrap_border_left = global.wrap_margin_player
global.wrap_border_right = room_width - global.wrap_margin_player
global.wrap_border_top = global.wrap_margin_player
global.wrap_border_bottom = room_height - global.wrap_margin_player

// Create particle systems

global.part_system_below = part_system_create();
part_system_depth(global.part_system_below,8);

global.part_system_above = part_system_create();
part_system_depth(global.part_system_above,-10);

global.part_weapon_splat=part_type_create();
part_type_shape(global.part_weapon_splat,pt_shape_spark);            //This defines the particles shape
part_type_size(global.part_weapon_splat,0.1,0.1,-0.01,1);                    //This is for the size
part_type_scale(global.part_weapon_splat,1,1);                       //This is for scaling
part_type_color1(global.part_weapon_splat,c_lime);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.part_weapon_splat,0.5);                        //This is its alpha. There are three different codes for this
part_type_speed(global.part_weapon_splat,0.50,2,-0.10,0);            //The particles speed
part_type_direction(global.part_weapon_splat,0,359,0,10);            //The direction
part_type_orientation(global.part_weapon_splat,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_weapon_splat,1);                         //This is the blend mode, either additive or normal
part_type_life(global.part_weapon_splat,1,10);                         //this is its lifespan in steps

global.part_rocket_smoke=part_type_create();
part_type_sprite(global.part_rocket_smoke,spr_flame_particle,false,false,false);            //This defines the particles shape
part_type_size(global.part_rocket_smoke,0.4,0.6,-0.04,0);                    //This is for the size
part_type_scale(global.part_rocket_smoke,1,1);                       //This is for scaling
part_type_color3(global.part_rocket_smoke,c_white,c_yellow,c_red);
part_type_alpha2(global.part_rocket_smoke,1,0);
part_type_speed(global.part_rocket_smoke,0.2,0.4,-0.10,1);            //The particles speed
part_type_direction(global.part_rocket_smoke,0,0,0,1);            //The direction
part_type_orientation(global.part_rocket_smoke,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke,6,20);                       //this is its lifespan in steps

global.part_rocket_smoke_small=part_type_create();
part_type_sprite(global.part_rocket_smoke_small,spr_flame_particle,false,false,false);            //This defines the particles shape
part_type_size(global.part_rocket_smoke_small,0.2,0.4,-0.001,0);
part_type_scale(global.part_rocket_smoke_small,1,1);                       //This is for scaling
part_type_color3(global.part_rocket_smoke_small,c_white,c_yellow,c_red);
part_type_alpha3(global.part_rocket_smoke_small,1,1,0);
part_type_speed(global.part_rocket_smoke_small,0.2,0.4,-0.10,1);            //The particles speed
part_type_direction(global.part_rocket_smoke_small,0,0,0,1);            //The direction
part_type_orientation(global.part_rocket_smoke_small,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke_small,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke_small,60,120);                       //this is its lifespan in steps

dust_particle = part_type_create();
part_type_shape(dust_particle,spr_star_test11);
part_type_size(dust_particle,1,2,0,0);
part_type_scale(dust_particle,1,1);
part_type_color3(dust_particle,c_white, c_olive,c_black);
part_type_alpha3(dust_particle,1,1,1);
part_type_speed(dust_particle,0,0,0,0);
part_type_direction(dust_particle,0,359,0,0);
part_type_orientation(dust_particle,0,0,0,1,1);
part_type_blend(dust_particle,1);
part_type_life(dust_particle,60,240);

global.flame_particle = part_type_create();
part_type_shape(global.flame_particle,pt_shape_disk);
part_type_size(global.flame_particle,0.40,0.70,0,0);
part_type_scale(global.flame_particle,1,1);
part_type_color3(global.flame_particle,c_white,c_yellow,c_red);
part_type_alpha3(global.flame_particle,0.8,0.5,0);
part_type_speed(global.flame_particle,1.5,3,-0.03,0);
part_type_direction(global.flame_particle,0,359,0,0);
part_type_gravity(global.flame_particle,0,270);
part_type_orientation(global.flame_particle,0,0,0,1,1);
part_type_blend(global.flame_particle,0);
part_type_life(global.flame_particle,80,120);

global.smoke_particle = part_type_create();
part_type_shape(global.smoke_particle,pt_shape_disk);
part_type_size(global.smoke_particle,0.60,1,0,0);
part_type_scale(global.smoke_particle,1,1);
part_type_color3(global.smoke_particle,12632256,8421504,0);
part_type_alpha3(global.smoke_particle,0.6,0.3,0);
part_type_speed(global.smoke_particle,0.5,2,-0.03,0);
part_type_direction(global.smoke_particle,0,359,0,0);
part_type_gravity(global.smoke_particle,0,270);
part_type_orientation(global.smoke_particle,0,0,0,1,1);
part_type_blend(global.smoke_particle,0);
part_type_life(global.smoke_particle,80,120);

global.bullet_glow_particle = part_type_create();
part_type_sprite(global.bullet_glow_particle,spr_bullet_glow,false,false,false);            
part_type_size(global.bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(global.bullet_glow_particle,1,1);                     
part_type_color2(global.bullet_glow_particle,c_white,c_lime);
part_type_alpha3(global.bullet_glow_particle,0.2,0.6,0);
part_type_speed(global.bullet_glow_particle,0,0,0,0);         
part_type_direction(global.bullet_glow_particle,0,0,0,1);            
part_type_orientation(global.bullet_glow_particle,0,0,0,0,1);      
part_type_blend(global.bullet_glow_particle,true);                      
part_type_life(global.bullet_glow_particle,5,10);

global.laser_particle  = part_type_create();
part_type_sprite(global.laser_particle,spr_laser_glow,false,false,false);            
part_type_size(global.laser_particle  ,1,1,0,0);                                  
part_type_alpha3(global.laser_particle ,0.1,0.6,0);
part_type_speed(global.laser_particle ,0,0,0,0);         
part_type_direction(global.laser_particle ,0,0,0,1);            
part_type_orientation(global.laser_particle ,0,0,0,0,1);      
part_type_blend(global.laser_particle ,true);                      
part_type_life(global.laser_particle ,2,4);     

global.lightning_particle  = part_type_create();
part_type_sprite(global.lightning_particle,spr_lightning_2,false,false,false);            
part_type_size(global.lightning_particle  ,0.8,1.2,0,0);
part_type_color3(global.lightning_particle,c_white,c_yellow,c_black);
part_type_alpha2(global.lightning_particle,1,0);
part_type_speed(global.lightning_particle ,0,0,0,0.2);         
part_type_direction(global.lightning_particle ,0,0,0,1);            
part_type_orientation(global.lightning_particle ,0,0,0,0,1);      
part_type_blend(global.lightning_particle ,true);                      
part_type_life(global.lightning_particle ,10,30);  

global.lightning_blob  = part_type_create();
part_type_sprite(global.lightning_blob,spr_explosion_particle,false,false,false);            
part_type_size(global.lightning_blob  ,0.5,0.7,0,0);
part_type_color2(global.lightning_blob,c_white,c_blue);
part_type_alpha2(global.lightning_blob,0.5,0);
part_type_speed(global.lightning_blob ,0,0,0,0.1);         
part_type_direction(global.lightning_blob ,0,0,0,1);            
part_type_orientation(global.lightning_blob ,0,0,0,0,1);      
part_type_blend(global.lightning_blob ,true);                      
part_type_life(global.lightning_blob ,1,3);     


global.teleport_out_particle  = part_type_create();
part_type_sprite(global.teleport_out_particle ,spr_player_ship,false,false,false);            
part_type_size(global.teleport_out_particle   ,0.8,1.2,0,0.01);
part_type_color1(global.teleport_out_particle ,c_yellow);
part_type_alpha3(global.teleport_out_particle ,0,0.1,0);
part_type_speed(global.teleport_out_particle ,0,0,0,0);         
part_type_direction(global.teleport_out_particle ,0,0,0,1);            
part_type_orientation(global.teleport_out_particle ,0,0,0,0,1);      
part_type_blend(global.teleport_out_particle ,true);                      
part_type_life(global.teleport_out_particle ,5,40);     

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
	color = make_color_hsv(random(255),random(20)+30,255)
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
	color = make_color_hsv(random(255),random(20)+30,255)
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
	color = make_color_hsv(random(255),random(20)+30,255)
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
	x_scale =  random(10)+5
	y_scale =  random(10)+5
	color = make_color_hsv(random(255),255,255)
	alpha =  random(0.4)+0.4
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
   
// Place player in the center of the room

if !instance_exists(obj_player)
	instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
obj_player.controls_disabled = false
obj_player.phy_rotation = -90
	
instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_mouse_cursor)
   
// Create some enemies

repeat(8)
	new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_ship)

repeat(6)
	new_asteroid_1 = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_asteroid_big)