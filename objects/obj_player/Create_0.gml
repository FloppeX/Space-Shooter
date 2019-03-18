// Credits

credits = 0;

// Variables for keeping track of stats

enemies_killed = 0
bullets_fired = 0
credits_gained = 0
credits_old = 0

// Gamepad controls
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false

use_active_item = false
select_next_active_item = false

turn_clockwise = 0;
turn_counter_clockwise = 0;
add_thrust = 0;
shoot_1 = 0;
shoot_2 = 0;
rotation_value = 0;

target_object = obj_enemy_ship

selected_active_module = noone

// Ship variables

phy_active = true
visible = true

physics_mass_properties(phy_mass, 0, 0, phy_inertia)

depth = -5

phy_rotation = 0
mirror_x = 0
mirror_y = 0

target_rotation = 0
left_stick_value = 0

lateral_drift_direction = 0
drift_resistance_force= 0

// collisions!

collision_target = noone

// Modifiers

modifiers[0,4] = noone

// Pickups

pickup_seek_range = 200
pickup_pull_force = 120


// Energy

energy_disabled = false
energy_disabled_timer = 60
energy_disabled_duration = 60

// Rotating

rotation_force = 1000//68 // The force that rotates the ship to the turn velocity

// Changeable ship variables

max_speed_base = 4
max_speed_multiplier = 0 
max_speed_bonus = 0

rotation_speed_base = 85
rotation_speed_multiplier = 1 
rotation_speed_bonus = 0

drift_resistance_base = 35
drift_resistance_multiplier = 1
drift_resistance_bonus = 0

max_health_base = 100 
max_health_multiplier = 1
max_health_bonus = 0

max_energy_base = 100
max_energy_multiplier = 1
max_energy_bonus = 0

max_particles_base = 100
max_particles_multiplier = 1
max_particles_bonus = 0

energy_increase_base = 0.5;
energy_increase_multiplier = 1
energy_increase_bonus = 0

//

// Calculate variables that may be changed by modifiers

max_speed = (max_speed_base * max_speed_multiplier) + max_speed_bonus
rotation_speed = (rotation_speed_base * rotation_speed_multiplier) + rotation_speed_bonus
drift_resistance = (drift_resistance_base * drift_resistance_multiplier) + drift_resistance_bonus
max_health = (max_health_base * max_health_multiplier) + max_health_bonus
max_energy = (max_energy_base * max_energy_multiplier) + max_energy_bonus
max_particles = (max_particles_base * max_particles_multiplier) + max_particles_bonus
energy_increase = (energy_increase_base * energy_increase_multiplier) + energy_increase_bonus


///

obj_health = max_health;
obj_health_old = obj_health
energy = max_energy;
particles = max_particles

obj_rotation = 0;
col = 0;

disabled_timer = 0
controls_disabled = false

target_object = obj_enemy_ship

// Graphics

invisible = false
alpha = 1
draw_scale = 1

// View

close_up_view = false

// Map

map_scale = 3

// Modifiers

modifiers[0,0] = noone

// Modules

modules[0,0] = noone

var module_number = 0
/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_cockpit);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 48


module_number = 1
/*
var h = irandom(7)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_cannon); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		}
with(temp_module){
	//scr_add_modifier_new(scr_module_modifier_damage_multiplier,1.3,noone,noone,noone);
	}
*/
/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_blaster);//scr_create_random_gun()
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 45
/* placement dist */	modules[module_number,3] = 34
with(modules[module_number,0])
	offset_angle = 0
//with(modules[module_number,0])
//	scr_add_modifier_new(scr_module_modifier_rainbow_bullets,45,-4,-4,-4)
	
module_number = 2
/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 24

module_number = 3
/* module */			modules[module_number,0] = noone //instance_create_depth(x,y,-10,obj_module_rotational_thrusters);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -45
/* placement dist */	modules[module_number,3] = 34

module_number = 4
/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 90
/* placement dist */	modules[module_number,3] = 24

module_number = 5
/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 0

module_number = 6

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -90
/* placement dist */	modules[module_number,3] = 24

module_number = 7 
/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_engine);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 135
/* placement dist */	modules[module_number,3] = 34


module_number = 8 
/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 180
/* placement dist */	modules[module_number,3] = 24

module_number = 9 
/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_engine);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -135
/* placement dist */	modules[module_number,3] = 34

for(var i = 0; i < array_height_2d(modules); i+=1;){
		modules[i,1].module = modules[i,0]
		modules[i,1].owner = id
		modules[i,1].persistent = true
		modules[i,1].x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,1].y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
		}

for(var i = 0; i < array_height_2d(modules); i+=1;){
	modules[i,0] = modules[i,1].module // update the array to include each module from each module holder 

	if scr_exists(modules[i,0]){
		modules[i,0].owner = id
		modules[i,0].persistent = true
		modules[i,0].visible = true
		modules[i,0].phy_position_x = modules[i,1].x
		modules[i,0].phy_position_y = modules[i,1].y
		modules[i,0].phy_rotation = phy_rotation + modules[i,0].offset_angle
		with (modules[i,0]){
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,0,1,0);
			switch (offset_angle){
				case 0: activation_button = 4; break;
				case 90: activation_button = 3; break;
				case 180: activation_button = 1; break;
				case 270: activation_button = 2; break;
				}
			}
			}
	}
	
// Select an active module if there is one
for(var i = 0; i < array_height_2d(modules) and selected_active_module == noone; i+=1;)
	if scr_exists(modules[i,0])
		if modules[i,0].active == true
			selected_active_module = i
	
// Add ship modifiers

//scr_add_modifier_new(scr_ship_modifier_brawler,600,"Brawler","Throws punches",spr_crew_brawler);

// Set spatial relationship between module holders

modules[0,1].module_holder_above = noone
modules[0,1].module_holder_below = modules[2,1]
modules[0,1].module_holder_left = noone
modules[0,1].module_holder_right = noone

modules[1,1].module_holder_above = noone
modules[1,1].module_holder_below = modules[4,1]
modules[1,1].module_holder_left = noone
modules[1,1].module_holder_right = modules[2,1]

modules[2,1].module_holder_above = modules[0,1]
modules[2,1].module_holder_below = modules[5,1]
modules[2,1].module_holder_left = modules[1,1]
modules[2,1].module_holder_right = modules[3,1]

modules[3,1].module_holder_above = noone
modules[3,1].module_holder_below = modules[6,1]
modules[3,1].module_holder_left = modules[2,1]
modules[3,1].module_holder_right = noone

modules[4,1].module_holder_above = modules[1,1]
modules[4,1].module_holder_below = modules[7,1]
modules[4,1].module_holder_left = noone
modules[4,1].module_holder_right = modules[5,1]

modules[5,1].module_holder_above = modules[2,1]
modules[5,1].module_holder_below = modules[8,1]
modules[5,1].module_holder_left = modules[4,1]
modules[5,1].module_holder_right = modules[6,1]

modules[6,1].module_holder_above = modules[3,1]
modules[6,1].module_holder_below = modules[8,1]
modules[6,1].module_holder_left = modules[5,1]
modules[6,1].module_holder_right = noone

modules[7,1].module_holder_above = modules[4,1]
modules[7,1].module_holder_below = noone
modules[7,1].module_holder_left = noone
modules[7,1].module_holder_right = modules[8,1]

modules[8,1].module_holder_above = modules[5,1]
modules[8,1].module_holder_below = noone
modules[8,1].module_holder_left = modules[7,1]
modules[8,1].module_holder_right = modules[8,1]

modules[9,1].module_holder_above = modules[6,1]
modules[9,1].module_holder_below = noone
modules[9,1].module_holder_left = modules[8,1]
modules[9,1].module_holder_right = noone
	
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

// Misc variables, perhaps used for modules/modifiers/crew

number_of_enemies = 0