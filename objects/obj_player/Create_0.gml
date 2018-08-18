// Credits

credits = 0;

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
rotation_value = 0;

target_object = obj_enemy_ship

// Ship variables

physics_mass_properties(phy_mass, 0, 0, phy_inertia)

depth = -5

phy_rotation = 0
mirror_x = 0
mirror_y = 0

drift_resistance = 35//800
target_rotation = 0
left_stick_value = 0

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

map_scale = 2

// Modules


// TEST adding new 2d-array "modules" that will replace module holders

modules[0,0] = noone

var module_number = 0

/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 0
module_holders[module_number].placement_offset_distance = 48
module_holders[module_number].module = instance_create_depth(phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),-10,obj_module_cockpit);
module_holders[module_number].module.placement_offset_angle = 0
module_holders[module_number].module.placement_offset_distance = 48
//module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 1, 0,0,0,0);
module_holders[module_number].module.owner = id;

/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_cockpit);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 48
/* offset angle */		modules[module_number,4] = 0

module_number = 1
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 45
module_holders[module_number].placement_offset_distance = 34
module_holders[module_number].module = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_blaster)//noone//instance_create_depth(x,y,-10,obj_module_biomechanical_actuator)
module_holders[module_number].module.offset_angle = 0
module_holders[module_number].module.placement_offset_angle = 45
module_holders[module_number].module.placement_offset_distance = 34
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
//module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 1, 0,0,0,0);
module_holders[module_number].module.activation_button = 4;
	
/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_blaster);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 45
/* placement dist */	modules[module_number,3] = 34
/* offset angle */		modules[module_number,4] = 0
	
	
module_number = 2
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 0
module_holders[module_number].placement_offset_distance = 24
//module_holders[module_number].module.placement_offset_angle = 0
//module_holders[module_number].module.placement_offset_distance = 24
module_holders[module_number].module = noone;

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 24
/* offset angle */		modules[module_number,4] = 0


module_number = 3
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = -45
module_holders[module_number].placement_offset_distance = 34
module_holders[module_number].module = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_blaster)//noone//instance_create_depth(x,y,-10,obj_module_biomechanical_actuator)
module_holders[module_number].module.offset_angle = 0
module_holders[module_number].module.placement_offset_angle = -45
module_holders[module_number].module.placement_offset_distance = 34
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.activation_button = 4;

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -45
/* placement dist */	modules[module_number,3] = 34
/* offset angle */		modules[module_number,4] = 0


module_number = 4
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 90
module_holders[module_number].placement_offset_distance = 24
module_holders[module_number].module = noone /*instance_create_depth(x,y,-10,obj_module_blaster)
module_holders[module_number].module.placement_offset_angle = 90
module_holders[module_number].module.placement_offset_distance = 24
module_holders[module_number].module.offset_angle = 90
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.activation_button = 3;
*/
//module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 1, 0,0,0,0);

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 90
/* placement dist */	modules[module_number,3] = 24
/* offset angle */		modules[module_number,4] = 0

module_number = 5
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder)
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 0
module_holders[module_number].placement_offset_distance = 0
//module_holders[module_number].module.placement_offset_angle = 0
//module_holders[module_number].module.placement_offset_distance = 0
module_holders[module_number].module = noone//instance_create_depth(x,y,-10,obj_module_deaths_head)

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 0
/* offset angle */		modules[module_number,4] = 0

module_number = 6
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_blaster);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = -90
module_holders[module_number].placement_offset_distance = 24
module_holders[module_number].module = instance_create_depth(phy_position_x,phy_position_y,-10,obj_armor_player)//noone//instance_create_depth(x,y,-10,obj_module_biomechanical_actuator)
module_holders[module_number].module.offset_angle = 0
module_holders[module_number].module.placement_offset_angle = -90
module_holders[module_number].module.placement_offset_distance = 24
//module_holders[module_number].module = noone //instance_create_depth(x,y,-10,obj_module_sawblade)//noone;
//module_holders[6].module.offset_angle = 90

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -90
/* placement dist */	modules[module_number,3] = 24
/* offset angle */		modules[module_number,4] = 0

module_number = 7 
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_engine);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 135
module_holders[module_number].placement_offset_distance = 34
module_holders[module_number].module = instance_create_depth(phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),-10,obj_module_engine);
module_holders[module_number].module.placement_offset_angle = 135
module_holders[module_number].module.placement_offset_distance = 34
//module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 1, 0,0,0,0);

/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_engine);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 135
/* placement dist */	modules[module_number,3] = 34
/* offset angle */		modules[module_number,4] = 0

module_number = 8 
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_shotgun);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = 180
module_holders[module_number].placement_offset_distance = 24
//module_holders[module_number].module.placement_offset_angle = 180
//module_holders[module_number].module.placement_offset_distance = 24
module_holders[module_number].module = noone

/* module */			modules[module_number,0] = noone
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 180
/* placement dist */	modules[module_number,3] = 24
/* offset angle */		modules[module_number,4] = 0

module_number = 9 
/*
module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_engine);
module_holders[module_number].owner = id;
module_holders[module_number].persistent = true;
module_holders[module_number].placement_offset_angle = -135
module_holders[module_number].placement_offset_distance = 34
module_holders[module_number].module = instance_create_depth(phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle),-10,obj_module_engine);
module_holders[module_number].module.placement_offset_angle = -135
module_holders[module_number].module.placement_offset_distance = 34
//module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 1, 0,0,0,0);

/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_engine);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -135
/* placement dist */	modules[module_number,3] = 34
/* offset angle */		modules[module_number,4] = 0

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
		with (modules[i,0])
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,0,1,0);
		}
	}
/*
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	module_holders[i].owner= id;
	
for(var i = 0; i < array_height_2d(modules); i+=1;)
		if scr_exists(modules[i,0]){
			modules[i,0].owner = id
			modules[i,0].persistent = true
			modules[i,0].visible = true
			modules[i,0].joint = noone
			//with (modules[i,0])
			//	joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,3,1,0);
			}
		*/
// Set spatial relationship between module holders
/*
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
	*/
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