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
var number_of_segments = 10
ship_segment[number_of_segments-1] = noone

ship_segment[0] = instance_create_depth(phy_position_x,phy_position_y,0,obj_ship_segment)
ship_segment[1] = instance_create_depth(phy_position_x-segment_distance,phy_position_y-segment_distance,0,obj_ship_segment)
ship_segment[2] = instance_create_depth(phy_position_x-segment_distance,phy_position_y,0,obj_ship_segment)
ship_segment[3] = instance_create_depth(phy_position_x-segment_distance,phy_position_y+segment_distance,0,obj_ship_segment)
ship_segment[4] = instance_create_depth(phy_position_x-2*segment_distance,phy_position_y-segment_distance,0,obj_ship_segment)
ship_segment[5] = instance_create_depth(phy_position_x-2*segment_distance,phy_position_y,0,obj_ship_segment)
ship_segment[6] = instance_create_depth(phy_position_x-2*segment_distance,phy_position_y+segment_distance,0,obj_ship_segment)
ship_segment[7] = instance_create_depth(phy_position_x-3*segment_distance,phy_position_y-segment_distance,0,obj_ship_segment)
ship_segment[8] = instance_create_depth(phy_position_x-3*segment_distance,phy_position_y,0,obj_ship_segment)
ship_segment[9] = instance_create_depth(phy_position_x-3*segment_distance,phy_position_y+segment_distance,0,obj_ship_segment)

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

for(i = 0; i < number_of_segments; i += 1){
	//var temp_dir = point_direction(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
	ship_segment[i].joint = physics_joint_weld_create(id, ship_segment[i], ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 10, 10,false);
	}

//	
	
ship_segment[0].module = instance_create_depth(ship_segment[0].phy_position_x,ship_segment[0].phy_position_y,-10,obj_module_cockpit);
ship_segment[1].module = instance_create_depth(ship_segment[1].phy_position_x,ship_segment[1].phy_position_y,-10,obj_module_blaster);
ship_segment[2].module = noone//
ship_segment[3].module = instance_create_depth(ship_segment[1].phy_position_x,ship_segment[1].phy_position_y,-10,obj_module_scatter_gun);
ship_segment[4].module = noone//instance_create_depth(ship_segment[4].phy_position_x,ship_segment[4].phy_position_y,-10,obj_module_engine_player);
ship_segment[5].module = noone//instance_create_depth(ship_segment[5].phy_position_x,ship_segment[5].phy_position_y,-10,obj_module_blaster);
ship_segment[6].module = noone//instance_create_depth(ship_segment[5].phy_position_x,ship_segment[5].phy_position_y,-10,obj_module_blaster);
ship_segment[7].module = instance_create_depth(ship_segment[2].phy_position_x,ship_segment[2].phy_position_y,-10,obj_module_engine_player);
ship_segment[8].module = noone//instance_create_depth(ship_segment[5].phy_position_x,ship_segment[5].phy_position_y,-10,obj_module_blaster);
ship_segment[9].module = instance_create_depth(ship_segment[2].phy_position_x,ship_segment[2].phy_position_y,-10,obj_module_engine_player);
ship_segment[1].module.offset_angle = 0
ship_segment[1].module.activation_button = 4
ship_segment[3].module.offset_angle = 0
ship_segment[3].module.activation_button = 4


for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
			ship_segment[i].owner = id
			ship_segment[i].persistent = true
			ship_segment[i].visible = true
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