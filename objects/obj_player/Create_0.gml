// Gamepad controls

turn_clockwise = 0;
turn_counter_clockwise = 0;
add_thrust = 0;
shoot_1 = 0;
shoot_2 = 0;

// Ship variables
phy_rotation = 0

mirror_x = 0
mirror_y = 0

obj_health = 10000000;

thrust = 800;
rotation_force = 100;
drift_resistance = 800

max_speed = 6;

obj_rotation = 0;
col = 0;

// Modules

event_inherited();

module_1 = instance_create_depth(x,y,0,obj_module_gun);
module_1.owner = self;

module_2 = instance_create_depth(x,y,0,obj_module_rocket_launcher);
module_2.owner = self;

module_3 = instance_create_depth(x,y,0,obj_module_shield);
module_3.owner = self;

// Particles

part_engine_flame_player = part_type_create();
part_engine_flame_player = global.part_rocket_smoke
/*
part_type_sprite(part_engine_flame_player,spr_engine_smoke,false,false,false);
part_type_size(part_engine_flame_player,0.6,1,-0.04,0);
part_type_scale(part_engine_flame_player,1,1);
part_type_color3(part_engine_flame_player,c_white,c_yellow,c_red);
part_type_alpha3(part_engine_flame_player,1,1,0);
part_type_speed(part_engine_flame_player,0.2,0.4,-0.10,0.3);            
part_type_direction(part_engine_flame_player,0,0,0,0);          
part_type_orientation(part_engine_flame_player,0,0,0,0,1);        
part_type_blend(part_engine_flame_player,true);                        
part_type_life(part_engine_flame_player,10,20);  
*/

engine_flame_emitter_1 = part_emitter_create(global.part_system_below);
engine_flame_emitter_2 = part_emitter_create(global.part_system_below);

dust_emitter = part_emitter_create(global.part_system_below);
