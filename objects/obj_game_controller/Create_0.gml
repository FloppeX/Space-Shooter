randomize();

// Base settings

game_set_speed(60,gamespeed_fps)
game_paused = false;

// View settings

global.view_mode = 1

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
part_type_sprite(global.part_rocket_smoke,spr_engine_smoke,false,false,false);            //This defines the particles shape
part_type_size(global.part_rocket_smoke,0.6,1.4,-0.04,0);                    //This is for the size
part_type_scale(global.part_rocket_smoke,1,1);                       //This is for scaling
part_type_color2(global.part_rocket_smoke,c_fuchsia, c_purple);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.part_rocket_smoke,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.part_rocket_smoke,0.2,0.4,-0.10,0.3);            //The particles speed
part_type_direction(global.part_rocket_smoke,0,0,0,0);            //The direction
part_type_orientation(global.part_rocket_smoke,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke,20,40);                       //this is its lifespan in steps

global.part_rocket_smoke_small=part_type_create();
part_type_sprite(global.part_rocket_smoke_small,spr_engine_smoke,false,false,false);            //This defines the particles shape
part_type_size(global.part_rocket_smoke_small,0.6,1.4,-0.04,0);                    //This is for the size
part_type_scale(global.part_rocket_smoke_small,1,1);                       //This is for scaling
part_type_color1(global.part_rocket_smoke_small,c_purple);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.part_rocket_smoke_small,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.part_rocket_smoke_small,0.2,0.4,-0.10,0.3);            //The particles speed
part_type_direction(global.part_rocket_smoke_small,0,0,0,0);            //The direction
part_type_orientation(global.part_rocket_smoke_small,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke_small,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke_small,20,40);                       //this is its lifespan in steps

global.dust_particle = part_type_create();
part_type_shape(global.dust_particle,pt_shape_flare);
part_type_size(global.dust_particle,0.02,0.20,0,0);
part_type_scale(global.dust_particle,1,1);
part_type_color1(global.dust_particle,16744576);
part_type_alpha3(global.dust_particle,0,1,0);
part_type_speed(global.dust_particle,0,0,0,0);
part_type_direction(global.dust_particle,0,359,0,0);
part_type_gravity(global.dust_particle,0,270);
part_type_orientation(global.dust_particle,0,0,0,1,1);
part_type_blend(global.dust_particle,0);
part_type_life(global.dust_particle,40,240);

global.flame_particle = part_type_create();
part_type_shape(global.flame_particle,pt_shape_disk);
part_type_size(global.flame_particle,0.30,0.80,0,0);
part_type_scale(global.flame_particle,1,1);
part_type_color3(global.flame_particle,c_white,c_yellow,c_red);
part_type_alpha3(global.flame_particle,1,1,0);
part_type_speed(global.flame_particle,4,6,-0.1,0);
part_type_direction(global.flame_particle,0,359,0,0);
part_type_gravity(global.flame_particle,0,270);
part_type_orientation(global.flame_particle,0,0,0,1,1);
part_type_blend(global.flame_particle,0);
part_type_life(global.flame_particle,30,60);

global.smoke_particle = part_type_create();
part_type_shape(global.smoke_particle,pt_shape_disk);
part_type_size(global.smoke_particle,0.50,1,0,0);
part_type_scale(global.smoke_particle,1,1);
part_type_color3(global.smoke_particle,12632256,8421504,0);
part_type_alpha3(global.smoke_particle,1,1,0);
part_type_speed(global.smoke_particle,0,1,0,0);
part_type_direction(global.smoke_particle,0,359,0,0);
part_type_gravity(global.smoke_particle,0,270);
part_type_orientation(global.smoke_particle,0,0,0,1,1);
part_type_blend(global.smoke_particle,0);
part_type_life(global.smoke_particle,30,60);

// Create some enemies

repeat(12)
	new_enemy = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_enemy_ship)

repeat(0)
	new_asteroid_1 = instance_create_depth(global.wrap_border_left + random(global.play_area_width),global.wrap_border_top + random(global.play_area_height),0,obj_asteroid_big)