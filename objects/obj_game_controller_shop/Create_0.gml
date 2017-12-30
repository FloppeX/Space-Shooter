randomize();

// Base settings

game_set_speed(60,gamespeed_fps)
game_paused = false;

// View settings

global.view_mode = 1
global.zoom = 200
temp_zoom = 4000

// Depth

depth = 20

// Play area settings

global.wrap_margin_player = 1000
global.wrap_margin_objects = 1000

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
part_system_depth(global.part_system_below,10);

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
part_type_alpha3(global.part_rocket_smoke,1,1,0);
part_type_speed(global.part_rocket_smoke,0.2,0.4,-0.10,1);            //The particles speed
part_type_direction(global.part_rocket_smoke,0,0,0,1);            //The direction
part_type_orientation(global.part_rocket_smoke,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke,4,10);                       //this is its lifespan in steps

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

global.dust_particle = part_type_create();
part_type_shape(global.dust_particle,pt_shape_sphere);
part_type_size(global.dust_particle,0.1,0.2,0,0);
part_type_scale(global.dust_particle,1,1);
part_type_color1(global.dust_particle,c_olive);
part_type_alpha3(global.dust_particle,0,0.4,0);
part_type_speed(global.dust_particle,0,0,0,0);
part_type_direction(global.dust_particle,0,359,0,0);
part_type_gravity(global.dust_particle,0,270);
part_type_orientation(global.dust_particle,0,0,0,1,1);
part_type_blend(global.dust_particle,0);
part_type_life(global.dust_particle,60,150);

global.flame_particle = part_type_create();
part_type_shape(global.flame_particle,pt_shape_sphere);
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
part_type_shape(global.smoke_particle,pt_shape_sphere);
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
part_type_size(global.bullet_glow_particle,0.6,0.8,-0.04,0);                   
part_type_scale(global.bullet_glow_particle,1,1);                     
part_type_color2(global.bullet_glow_particle,c_white,c_lime);
part_type_alpha3(global.bullet_glow_particle,1,1,0);
part_type_speed(global.bullet_glow_particle,0,0,0,0);         
part_type_direction(global.bullet_glow_particle,0,0,0,1);            
part_type_orientation(global.bullet_glow_particle,0,0,0,0,1);      
part_type_blend(global.bullet_glow_particle,true);                      
part_type_life(global.bullet_glow_particle,4,6);     

// Create background sprites

for (var i = 0; i< 300; i++;)
   {
   background_sprite[i] = layer_sprite_create(layer_get_id("background_layer_1"),random(room_width),random( room_height), spr_star);
   var scale = random(0.5)+0.5
   layer_sprite_xscale(background_sprite[i], scale);
   layer_sprite_yscale(background_sprite[i], scale);
   var color = make_color_hsv(random(255),random(40)+10,255)
   layer_sprite_blend(background_sprite[i], color);
   layer_sprite_alpha(background_sprite[i], random(1));
   }

for (var i = 0; i< 400; i++;)
   {
   background_sprite[i] = layer_sprite_create(layer_get_id("background_layer_2"),random(room_width),random( room_height), spr_star);
   var scale = random(0.75)+0.75
   layer_sprite_xscale(background_sprite[i], scale);
   layer_sprite_yscale(background_sprite[i], scale);
   var color = make_color_hsv(random(255),random(20)+10,255)
   layer_sprite_blend(background_sprite[i], color);
   layer_sprite_alpha(background_sprite[i], random(1));
   }
   
for (var i = 0; i< 600; i++;)
   {
   background_sprite[i] = layer_sprite_create(layer_get_id("background_layer_3"),random(room_width),random( room_height), spr_star);
   var scale = random(1)+1
   layer_sprite_xscale(background_sprite[i], scale);
   layer_sprite_yscale(background_sprite[i], scale);
   var color = make_color_hsv(random(255),random(20)+10,255)
   layer_sprite_blend(background_sprite[i], color);
   layer_sprite_alpha(background_sprite[i], random(1));
   }

for (var i = 0; i< 5; i++;)
   {
   background_sprite[i] = layer_sprite_create(layer_get_id("background_layer_4"),global.wrap_border_left+ random( global.play_area_width), global.wrap_border_top+ random( global.play_area_height), spr_background_1);
   layer_sprite_xscale(background_sprite[i],  random(10)+5);
   layer_sprite_yscale(background_sprite[i],  random(10)+5);
   var color = make_color_hsv(random(255),255,255)
   layer_sprite_blend(background_sprite[i], color);
   layer_sprite_alpha(background_sprite[i], random(1));
   layer_sprite_angle(background_sprite[i], random(360));

   }

// Settings for player instance
with(obj_player){
	phy_position_x = 0.5 * room_width
	phy_position_y = 0.5 * room_height
	phy_rotation = -90
	controls_disabled = true
	}
shop = instance_create_depth(0,0,12,obj_shop)
shop.phy_position_x = 0.5 * room_width + 80
shop.phy_position_y = 0.5 * room_height - 80
	
