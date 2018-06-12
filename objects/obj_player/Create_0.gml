// Gamepad controls
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false

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
rotation_force = 80 // 10
drift_resistance = 800
target_rotation = 0
left_stick_value = 0

max_speed_base = 5
max_speed_multiplier = 0 
max_speed_bonus = 0

obj_rotation = 0;
col = 0;

disabled_timer = 0
controls_disabled = false

// Graphics

invisible = false
alpha = 1
draw_scale = 1

// Map

map_scale = 2

// Modules

module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[0].owner = id;
module_holders[0].persistent = true;
module_holders[0].placement_offset_angle = 0
module_holders[0].placement_offset_distance = 48
module_holders[0].module = instance_create_depth(x,y,-10,obj_module_cockpit);
module_holders[0].module.owner = id;

module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].owner = id;
module_holders[1].persistent = true;
module_holders[1].placement_offset_angle = 45
module_holders[1].placement_offset_distance = 34
module_holders[1].module = instance_create_depth(x,y,-10,obj_module_blaster);
module_holders[1].module.activation_button = 4;
//with(module_holders[1].module)
//	scr_add_modifier(scr_module_modifier_heavy_bullets);

module_holders[2] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[2].owner = id;
module_holders[2].persistent = true;
module_holders[2].placement_offset_angle = 0
module_holders[2].placement_offset_distance = 24
module_holders[2].module = noone;

module_holders[3] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[3].owner = id;
module_holders[3].persistent = true;
module_holders[3].placement_offset_angle = -45
module_holders[3].placement_offset_distance = 34
module_holders[3].module = instance_create_depth(x,y,-10,obj_module_rocket_launcher)
module_holders[3].module.activation_button = 4;

module_holders[4] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun);
module_holders[4].owner = id;
module_holders[4].persistent = true;
module_holders[4].placement_offset_angle = 90
module_holders[4].placement_offset_distance = 24
module_holders[4].module = instance_create_depth(x,y,-10,obj_module_shield_wedge)
module_holders[4].module.offset_angle = -90

module_holders[5] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[5].owner = id;
module_holders[5].persistent = true;
module_holders[5].placement_offset_angle = 0
module_holders[5].placement_offset_distance = 0
module_holders[5].module = noone

module_holders[6] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_blaster);
module_holders[6].owner = id;
module_holders[6].persistent = true;
module_holders[6].placement_offset_angle = -90
module_holders[6].placement_offset_distance = 24
module_holders[6].module = noone;


module_holders[7] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_engine);
module_holders[7].owner = id;
module_holders[7].persistent = true;
module_holders[7].placement_offset_angle = 135
module_holders[7].placement_offset_distance = 34
module_holders[7].module = instance_create_depth(x,y,-10,obj_module_engine);

module_holders[8] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_shotgun);
module_holders[8].owner = id;
module_holders[8].persistent = true;
module_holders[8].placement_offset_angle = 180
module_holders[8].placement_offset_distance = 24
module_holders[8].module = noone

module_holders[9] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_engine);
module_holders[9].owner = id;
module_holders[9].persistent = true;
module_holders[9].placement_offset_angle = -135
module_holders[9].placement_offset_distance = 34
module_holders[9].module = instance_create_depth(x,y,-10,obj_module_engine);

for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	module_holders[i].owner= id;
	
// Set spatial relationship between module holders

module_holders[0].module_holder_above = noone
module_holders[0].module_holder_below = module_holders[2]
module_holders[0].module_holder_left = noone
module_holders[0].module_holder_right = noone

module_holders[1].module_holder_above = noone
module_holders[1].module_holder_below = module_holders[4]
module_holders[1].module_holder_left = noone
module_holders[1].module_holder_right = module_holders[2]

module_holders[2].module_holder_above = module_holders[0]
module_holders[2].module_holder_below = module_holders[5]
module_holders[2].module_holder_left = module_holders[1]
module_holders[2].module_holder_right = module_holders[3]

module_holders[3].module_holder_above = noone
module_holders[3].module_holder_below = module_holders[6]
module_holders[3].module_holder_left = module_holders[2]
module_holders[3].module_holder_right = noone

module_holders[4].module_holder_above = module_holders[1]
module_holders[4].module_holder_below = module_holders[7]
module_holders[4].module_holder_left = noone
module_holders[4].module_holder_right = module_holders[5]

module_holders[5].module_holder_above = module_holders[2]
module_holders[5].module_holder_below = module_holders[8]
module_holders[5].module_holder_left = module_holders[4]
module_holders[5].module_holder_right = module_holders[6]

module_holders[6].module_holder_above = module_holders[3]
module_holders[6].module_holder_below = module_holders[9]
module_holders[6].module_holder_left = module_holders[5]
module_holders[6].module_holder_right = noone

module_holders[7].module_holder_above = module_holders[4]
module_holders[7].module_holder_below = noone
module_holders[7].module_holder_left = noone
module_holders[7].module_holder_right = module_holders[8]

module_holders[8].module_holder_above = module_holders[5]
module_holders[8].module_holder_below = noone
module_holders[8].module_holder_left = module_holders[7]
module_holders[8].module_holder_right = module_holders[9]

module_holders[9].module_holder_above = module_holders[6]
module_holders[9].module_holder_below = noone
module_holders[9].module_holder_left = module_holders[8]
module_holders[9].module_holder_right = noone
	
// Apply some random modifiers
/*
for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	if object_get_parent(ship_modules[i].object_index) == obj_module_gun{
		var g = irandom(99)
		if g <= 49
			with(ship_modules[i])
				scr_add_random_modifier_common()
				
		g = irandom(99)
		if g <= 24
			with(ship_modules[i])
				scr_add_random_modifier_uncommon()
		
		g = irandom(99)
		if g <= 9
			with(ship_modules[i])
				scr_add_random_modifier_rare()
	}
*/
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