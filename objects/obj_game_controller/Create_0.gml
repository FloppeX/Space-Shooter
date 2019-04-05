// Test

cursor = instance_create_depth(0,0,-1000,obj_mouse_cursor)

//

randomize();

// Base settings

game_set_speed(60,gamespeed_fps)
global.game_timer = 0

// Global stats variables

global.total_kills = -1
global.total_bullets = -1
global.total_credits = -1

// Open file to read initial settings

stats_file = file_text_open_read(working_directory+"stats.txt");

global.total_kills = file_text_read_real(stats_file);
file_text_readln(stats_file); 
global.total_bullets = file_text_read_real(stats_file);
file_text_readln(stats_file);  
global.total_credits = file_text_read_real(stats_file);

file_text_close(stats_file);


// View settings

var s_width, s_height, g_width, g_height, aspect, c_scale, offSET;

g_width = view_wport[0];

g_height = view_hport[0];

aspect = (g_width / g_height);

s_height = 1080//display_get_height();//2160//

s_width = (s_height * aspect);

c_scale = (s_height / g_height);

offSET = 256;

if !window_get_fullscreen()

{ window_set_size((s_width - offSET),(s_height - offSET)); }

display_set_gui_size(3840,2160)//(s_width,s_height);

//display_set_gui_size(display_get_width(), display_get_height());


global.view_mode = 1
global.max_zoom = 4400
global.min_zoom = 200
global.zoom = 4400//1100
temp_zoom = global.zoom

// Screen shake settings

global.screen_shake_intensity = 0
global.screen_shake_duration = 0


// Graphics settings

draw_enable_swf_aa(true);
global.aa_level = 3
draw_set_swf_aa_level(global.aa_level);

draw_set_lighting(true);
draw_light_define_direction(1, 1, 1, 0, c_yellow);
draw_light_enable(1, true);


// Fonts

global.font_title = font_add(working_directory+ "entsans.ttf", 128, true, false, 32, 128);
global.font_title_2 = font_add(working_directory+ "orbitron_bold.ttf", 64, false, true, 32, 128);
global.font_menu = font_add(working_directory+ "orbitron_medium.ttf", 24, false, false, 32, 128);
//global.font_damage_number = font_add(working_directory+ "DS-DIGIT.TTF", 18, false, false, 32, 128);
global.font_small_text = font_add(working_directory+ "orbitron_medium.ttf", 10, false, false, 32, 128);
global.font_big_text = font_add(working_directory+ "orbitron_medium.ttf", 30, false, false, 32, 128);
global.font_bigger_text = font_add(working_directory+ "orbitron_medium.ttf", 48, false, false, 32, 128);

// Play area settings

room_width = 6000;
room_height = 6000;

global.wrap_margin_player = 1000;
global.wrap_margin_objects = 1000;

global.viewport_width = display_get_width(); //view_get_wport(0);
global.viewport_height = display_get_height(); //view_get_hport(0);

global.play_area_width = room_width - 2 * global.wrap_margin_player;
global.play_area_height = room_height - 2 * global.wrap_margin_player;

global.wrap_border_left = global.wrap_margin_player
global.wrap_border_right = room_width - global.wrap_margin_player
global.wrap_border_top = global.wrap_margin_player
global.wrap_border_bottom = room_height - global.wrap_margin_player


// Camera

global.camera = instance_create_depth(0.5 * global.play_area_width, 0.5 * global.play_area_height,-10,obj_camera)

// Sound

global.music_on = false
audio_stop_all();
audio_listener_position(0.5 * room_width,0.5 * room_height,1000);

audio_falloff_set_model(audio_falloff_linear_distance_clamped)
/*global.music_emitter = audio_emitter_create()
audio_emitter_falloff(global.music_emitter, 100, 1600, 1);
*/

// Other global game variables

global.asteroid_chance_credit = 7//Percentage chance
global.asteroid_chance_health = 7
global.asteroid_chance_particles = 7

// Difficulty - increases with each room

global.difficulty_level = 1;

// How many levels?

global.number_of_levels = 6

// Controls

if instance_number(obj_input) == 0
	input_controller = instance_create_depth(0,0,10,obj_input)

// Create particle systems

global.part_system_below = part_system_create();
part_system_depth(global.part_system_below,8);

global.part_system_below_2 = part_system_create(); // Used for wormhole effect
part_system_depth(global.part_system_below_2,7);
part_system_draw_order(global.part_system_below_2, false);

global.part_system_above = part_system_create();
part_system_depth(global.part_system_above,-10);

global.part_weapon_splat=part_type_create();
part_type_shape(global.part_weapon_splat,pt_shape_spark);            //This defines the particles shape
part_type_size(global.part_weapon_splat,0.5,1,-0.01,1);                    //This is for the size
part_type_scale(global.part_weapon_splat,1,1);                       //This is for scaling
part_type_color1(global.part_weapon_splat,c_lime);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.part_weapon_splat,0.5);                        //This is its alpha. There are three different codes for this
part_type_speed(global.part_weapon_splat,0,0,0,0);            //The particles speed
part_type_direction(global.part_weapon_splat,0,359,0,10);            //The direction
part_type_orientation(global.part_weapon_splat,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_weapon_splat,1);                         //This is the blend mode, either additive or normal
part_type_life(global.part_weapon_splat,6,10);                         //this is its lifespan in steps

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

global.part_rocket_smoke_2=part_type_create();
part_type_sprite(global.part_rocket_smoke_2,spr_flame_particle_3,false,false,false);            //This defines the particles shape
part_type_size(global.part_rocket_smoke_2,0.4,0.6,-0.02,0);                    //This is for the size
part_type_scale(global.part_rocket_smoke_2,1,1);                       //This is for scaling
part_type_color1(global.part_rocket_smoke_2,c_yellow);
part_type_alpha2(global.part_rocket_smoke_2,1,0);
part_type_speed(global.part_rocket_smoke_2,0.2,0.4,-0.10,1);            //The particles speed
part_type_direction(global.part_rocket_smoke_2,0,0,0,1);            //The direction
part_type_orientation(global.part_rocket_smoke_2,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.part_rocket_smoke_2,true);                         //This is the blend mode, either additive or normal
part_type_life(global.part_rocket_smoke_2,6,12);                       //this is its lifespan in steps

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
part_type_life(global.part_rocket_smoke_small,10,12);                       //this is its lifespan in steps

global.dust_particle = part_type_create();
part_type_shape(global.dust_particle,spr_star_test11);
part_type_size(global.dust_particle,1,2,0,0);
part_type_scale(global.dust_particle,1,1);
part_type_color3(global.dust_particle,c_white, c_olive,c_black);
part_type_alpha3(global.dust_particle,1,1,1);
part_type_speed(global.dust_particle,0,0,0,0);
part_type_direction(global.dust_particle,0,359,0,0);
part_type_orientation(global.dust_particle,0,0,0,1,1);
part_type_blend(global.dust_particle,1);
part_type_life(global.dust_particle,60,240);

global.flame_particle = part_type_create();
part_type_shape(global.flame_particle,pt_shape_disk);
part_type_size(global.flame_particle,0.40,0.70,0,0);
part_type_scale(global.flame_particle,1,1);
part_type_color3(global.flame_particle,c_white,c_yellow,c_red);
part_type_alpha3(global.flame_particle,0.8,0.5,0);
part_type_speed(global.flame_particle,1.5,3,-0.03,0);
part_type_direction(global.flame_particle,0,359,0,0);

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
part_type_sprite(global.bullet_glow_particle,spr_bullet,false,false,false);            
part_type_size(global.bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(global.bullet_glow_particle,1,1);                     
part_type_color2(global.bullet_glow_particle,c_white,c_lime);
part_type_alpha3(global.bullet_glow_particle,0.2,0.6,0);
part_type_speed(global.bullet_glow_particle,0,0,0,0);         
part_type_direction(global.bullet_glow_particle,0,0,0,1);            
part_type_orientation(global.bullet_glow_particle,0,0,0,0,1);      
part_type_blend(global.bullet_glow_particle,true);                      
part_type_life(global.bullet_glow_particle,0,0);   

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

global.thruster_spray_particle = part_type_create();
part_type_sprite(global.thruster_spray_particle,spr_thruster_spray,false,false,false);            //This defines the particles shape
part_type_size(global.thruster_spray_particle,0.5,0.8,-0.15,1);                    //This is for the size
part_type_scale(global.thruster_spray_particle,1,1);                       //This is for scaling
part_type_color1(global.thruster_spray_particle,c_white);
part_type_alpha2(global.thruster_spray_particle,1,0);
part_type_speed(global.thruster_spray_particle,0.2,0.4,-0.10,1);            //The particles speed
part_type_direction(global.thruster_spray_particle,0,0,0,1);            //The direction
part_type_orientation(global.thruster_spray_particle,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.thruster_spray_particle,false);                         //This is the blend mode, either additive or normal
part_type_life(global.thruster_spray_particle,3,5); 


global.heart_particle  = part_type_create();
part_type_sprite(global.heart_particle,spr_heart,false,false,false);            
part_type_size(global.heart_particle  ,0.8,1.2,0,0);
part_type_color3(global.heart_particle,c_fuchsia,c_red,c_maroon);
part_type_alpha2(global.heart_particle,1,0);
part_type_speed(global.heart_particle ,0.5,1,0,0.2);         
part_type_direction(global.heart_particle ,0,0,0,1);            
part_type_orientation(global.heart_particle ,0,0,0,0,1);      
part_type_blend(global.heart_particle ,true);                      
part_type_life(global.heart_particle ,30,60);

global.wormhole_particle_start = part_type_create();
part_type_sprite(global.wormhole_particle_start,spr_wormhole,false,false,false);            
part_type_size(global.wormhole_particle_start,0,0,0.02,0);                   
part_type_scale(global.wormhole_particle_start,1,1);                     
//part_type_color3(global.wormhole_particle_start,c_white,c_red,c_black);
//part_type_alpha2(global.wormhole_particle_start,1,0);
part_type_speed(global.wormhole_particle_start,0,0,0,0);         
part_type_direction(global.wormhole_particle_start,0,0,0,1);            
part_type_orientation(global.wormhole_particle_start,0,0,0,0,1);      
part_type_blend(global.wormhole_particle_start,false);                      
part_type_life(global.wormhole_particle_start,50,50);

global.wormhole_particle_end = part_type_create();
part_type_sprite(global.wormhole_particle_end,spr_wormhole,false,false,false);            
part_type_size(global.wormhole_particle_end,1,1,-0.02,0);                   
part_type_scale(global.wormhole_particle_end,1,1);                     
//part_type_color3(global.wormhole_particle_end,c_white,c_red,c_black);
//part_type_alpha2(global.wormhole_particle_end,1,0);
part_type_speed(global.wormhole_particle_end,0,0,0,0);         
part_type_direction(global.wormhole_particle_end,0,0,0,1);            
part_type_orientation(global.wormhole_particle_end,0,0,0,0,1);      
part_type_blend(global.wormhole_particle_end,false);                      
part_type_life(global.wormhole_particle_end,50,50);


// Module arrays

scr_create_array_player_weapons()
scr_create_array_player_devices()

/*
global.array_player_weapons = []
var module_number,module_id,module_type,module_cost,module_rarity;
// 0 = gun, 1 = device, 2 = crew

module_number = 0

//Blaster
module_id = obj_module_blaster
module_type = 0
module_cost = 6
module_rarity = 12
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

module_number = 1

//Scatter gun
module_id = obj_module_scatter_gun
module_type = 0
module_cost = 6
module_rarity = 12
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

module_number = 2

//Shotgun
module_id = obj_module_shotgun
module_type = 0
module_cost = 6
module_rarity = 8
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

module_number = 3

//Cannon
module_id = obj_module_cannon
module_type = 0
module_cost = 8
module_rarity = 4
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

module_number = 4

//Zapper
module_id = obj_module_zapper
module_type = 0
module_cost = 8
module_rarity = 4
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

module_number = 5

//Rocket launcher
module_id = obj_module_rocket_launcher
module_type = 0
module_cost = 8
module_rarity = 4
global.array_player_modules[module_number,0] = module_id
global.array_player_modules[module_number,1] = module_type
global.array_player_modules[module_number,2] = module_cost
global.array_player_modules[module_number,3] = module_rarity

*/