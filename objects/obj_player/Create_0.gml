// Gamepad controls

gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false

global.gamepad_button_x = false;
global.gamepad_button_y = false;
global.gamepad_button_a = false;
global.gamepad_button_b = false;

turn_clockwise = 0;
turn_counter_clockwise = 0;
add_thrust = 0;
shoot_1 = 0;
shoot_2 = 0;

target_object = obj_enemy_ship

// Ship variables

physics_mass_properties(phy_mass, 0, 0, phy_inertia)

depth = -5

phy_rotation = -90
mirror_x = 0
mirror_y = 0

max_health = 100;
obj_health = max_health;
max_energy = 100;
energy = max_energy;
energy_increase = 0.5;

thrust = 900;
rotation_force = 80;
drift_resistance = 800
target_rotation = 0
left_stick_value = 0

max_speed = 4;

obj_rotation = 0;
col = 0;

disabled_timer = 0
controls_disabled = false

invisible = false
alpha = 1

// Map

map_scale = 2

// Modules

ship_modules[0] = instance_create_depth(x,y,-10,obj_module_cockpit);
ship_modules[0].offset_angle = 0;
ship_modules[0].activation_button = 4

ship_modules[1] = instance_create_depth(x,y,-10,obj_module_cannon);
ship_modules[1].offset_angle = 0;
ship_modules[1].activation_button = 4
/*
with (ship_modules[1])
	scr_add_modifier(scr_module_modifier_destroy_enemy_bullets)
*/
	
ship_modules[2] = instance_create_depth(x,y,-10,obj_module_empty);
ship_modules[2].offset_angle = 0;
ship_modules[2].activation_button = 4

	
ship_modules[3] = instance_create_depth(x,y,-10,obj_module_empty);
ship_modules[3].offset_angle = 0;
ship_modules[3].activation_button = 4
/*
with (ship_modules[3])
	scr_add_modifier(scr_module_modifier_destroy_enemy_bullets)
*/	
ship_modules[4] = instance_create_depth(x,y,-10,obj_module_shotgun);
ship_modules[4].offset_angle = -90;
ship_modules[4].activation_button = 3
with (ship_modules[4])
	scr_add_modifier(scr_modifier_bullet_color_random)
with (ship_modules[4])
	scr_add_modifier(scr_module_modifier_faster_rof)

	
ship_modules[5] = instance_create_depth(x,y,-10,obj_module_empty);
ship_modules[5].offset_angle = 0;
ship_modules[5].activation_button = 2

ship_modules[6] = instance_create_depth(x,y,-10,obj_module_blaster);
ship_modules[6].offset_angle = 90;
ship_modules[6].activation_button = 2
with (ship_modules[6])
	scr_add_modifier(scr_module_modifier_faster_rof)

ship_modules[7] = instance_create_depth(x,y,-10,obj_module_engine);
ship_modules[7].offset_angle = 0; 
ship_modules[7].activation_button = 1

ship_modules[8] = instance_create_depth(x,y,-10,obj_module_shotgun);
ship_modules[8].offset_angle = 180; 
ship_modules[8].activation_button = 1

ship_modules[9] = instance_create_depth(x,y,-10,obj_module_engine);
ship_modules[9].offset_angle = 0; 
ship_modules[9].activation_button = 1

for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	ship_modules[i].owner= id;

// Particles

part_engine_flame_player = part_type_create();
part_engine_flame_player = global.part_rocket_smoke

engine_flame_emitter_1 = part_emitter_create(global.part_system_below);
engine_flame_emitter_2 = part_emitter_create(global.part_system_below);

dust_emitter = part_emitter_create(global.part_system_below);

// Debris particles for if it blows up

debris_parts[0] = spr_debris_player_1
debris_parts[1] = spr_debris_player_2
debris_parts[2] = spr_debris_player_3
debris_parts[3] = spr_module_cockpit_1

//Sounds

sound_priority = 1

explosion_sound = snd_explosion_large_01
ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);