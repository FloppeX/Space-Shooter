//

obj_health = 100

// Gamepad controls


// Gamepad controls
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false

use_active_item = false
select_next_active_item = false

add_thrust = 0;
rotation_value = 0;

selected_active_module = noone

controls_disabled = false
disabled_timer = 0



// Changeable ship variables

max_speed_base = 4
max_speed_multiplier = 1 
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

// Health

obj_health = max_health;
obj_health_old = obj_health

// Energy

energy = max_energy;
energy_disabled = false
energy_disabled_timer = 60
energy_disabled_duration = 60

// Particles

particles = max_particles

// Rotating & moving

rotation_force = 800
rotation_value = 0;
add_thrust = 0;

// Target

target_object = obj_enemy_ship

// Active module

selected_active_module = noone
use_active_item = false
select_next_active_item = false

// Graphics

invisible = false
alpha = 1
draw_scale = 1

// Map

map_scale = 3

// Credits

credits = 0;

// Variables for keeping track of stats

enemies_killed = 0
bullets_fired = 0
credits_gained = 0
credits_old = 0

// Pickups

pickup_seek_range = 200
pickup_pull_force = 120

// Modifiers

modifiers[0,4] = noone

// Segments

var segment_distance = 24
number_of_segments = 10
//ship_segment[number_of_segments-1] = noone

ship_segment[0] = instance_create_depth(phy_position_x,phy_position_y,-6,obj_ship_segment)
number_segments_placed = 1;
var segment_placed = false;

repeat(100)
	if number_segments_placed < number_of_segments{
		segment_placed = false
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
			if segment_placed == false{
				var direction_randomizer = irandom(11)
				if direction_randomizer >= 0 and direction_randomizer <= 2
					if !instance_place(ship_segment[i].phy_position_x+segment_distance,ship_segment[i].phy_position_y,obj_ship_segment){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x+segment_distance,ship_segment[i].phy_position_y,-6,obj_ship_segment)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 3 and direction_randomizer <= 5
					if !instance_place(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y-segment_distance,obj_ship_segment){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y-segment_distance,-6,obj_ship_segment)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 6 and direction_randomizer <= 8
					if !instance_place(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y+segment_distance,obj_ship_segment){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y+segment_distance,-6,obj_ship_segment)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 9 //and direction_randomizer <= 15
					if !instance_place(ship_segment[i].phy_position_x-segment_distance,ship_segment[i].phy_position_y,obj_ship_segment){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x-segment_distance,ship_segment[i].phy_position_y,-6,obj_ship_segment)
						number_segments_placed += 1
						segment_placed = true
						}
						
				if segment_placed == true
					for(var h = 0; h < number_segments_placed; h += 1)
						if ship_segment[h] != noone
							with(ship_segment[h]){
								temp_segment = instance_place(phy_position_x,phy_position_y-segment_distance,obj_ship_segment)
									ship_segment_left = temp_segment
								temp_segment = instance_place(phy_position_x+segment_distance,phy_position_y,obj_ship_segment)
									ship_segment_above = temp_segment
								temp_segment = instance_place(phy_position_x,phy_position_y+segment_distance,obj_ship_segment)
									ship_segment_right = temp_segment
								temp_segment = instance_place(phy_position_x-segment_distance,phy_position_y,obj_ship_segment)
									ship_segment_below = temp_segment
								}
			}
	}
			

// Update position = average of all segment positions

var x_total = 0
var y_total = 0;
for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	x_total += ship_segment[i].phy_position_x
	y_total += ship_segment[i].phy_position_y
	}
phy_position_x = x_total / array_length_1d(ship_segment)
phy_position_y = y_total / array_length_1d(ship_segment)
//	

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	ship_segment[i].joint = physics_joint_weld_create(id, ship_segment[i], ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 10, 10,false);
	
/*
for(i = 0; i < number_of_segments; i += 1)
	with(ship_segment[i]){
		temp_segment = instance_place(phy_position_x,phy_position_y-segment_distance,obj_ship_segment)
			ship_segment_left = temp_segment
		temp_segment = instance_place(phy_position_x+segment_distance,phy_position_y,obj_ship_segment)
			ship_segment_above = temp_segment
		temp_segment = instance_place(phy_position_x,phy_position_y+segment_distance,obj_ship_segment)
			ship_segment_right = temp_segment
		temp_segment = instance_place(phy_position_x-segment_distance,phy_position_y,obj_ship_segment)
			ship_segment_below = temp_segment
		}
*/
//

var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_cockpit);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}

var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_blaster);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}
	
var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_engine_player);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}
	
var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_engine_player);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}



for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
			ship_segment[i].owner = id
			ship_segment[i].persistent = true
			ship_segment[i].visible = true
			ship_segment[i].placement_angle = point_direction(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			ship_segment[i].placement_distance = point_distance(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			if scr_exists(ship_segment[i].module){
				ship_segment[i].module.owner = id
				ship_segment[i].module.persistent = true
				ship_segment[i].module.visible = true
				ship_segment[i].module.phy_position_x = ship_segment[i].phy_position_x
				ship_segment[i].module.phy_position_y = ship_segment[i].phy_position_y
				ship_segment[i].module.joint = physics_joint_revolute_create(ship_segment[i], ship_segment[i].module,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 360, 0, 10,0,1,0);
				}
			}

//Sounds

sound_priority = 1

explosion_sound = snd_explosion_large_01
ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);

// Debris particles for if it blows up

debris_parts[0] = spr_debris_player_1
debris_parts[1] = spr_debris_player_2
debris_parts[2] = spr_debris_player_3
debris_parts[3] = spr_module_cockpit_1