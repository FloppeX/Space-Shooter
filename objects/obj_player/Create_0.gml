//

obj_health = 100

// Gamepad controls


// Gamepad controls
/*
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false
*/
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

// Hit invulnerability - to avoid getting hit lots of times in a row

hit_invulnerable_timer = 0

// Energy

energy = max_energy;
energy_disabled = false
energy_disabled_timer = 60
energy_disabled_duration = 60

// Particles

particles = max_particles

// Rotating & moving

rotation_force = 600
rotation_value = 0;
add_thrust = 0;

// Target

target_objects[0] = obj_enemy_ship_team_1_new
target_objects[1] = obj_enemy_ship_team_1_new

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

modifiers[0,0] = noone

// Segments

segment_distance = 24
scr_create_ship_segments(4,segment_distance,obj_ship_segment_player)

//

scr_place_engine_player()

// TEST
/*
var temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun)
temp_module.offset_angle = 0
temp_module.placement_req_above = noone
temp_module.placement_req_left = 1
temp_module.placement_req_right = 1
temp_module.placement_req_below = 1
var module_placed = false

repeat(20)
	for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
		if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and module_placed == false{
			ship_segment[i].module = temp_module
			module_placed = true
		}
*/
//

scr_place_weapon_player()


var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_cockpit);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}

scr_ship_update_segments(id,segment_distance)

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
				ship_segment[i].module.phy_rotation = phy_rotation-ship_segment[i].module.offset_angle
				ship_segment[i].module.joint = physics_joint_revolute_create(ship_segment[i], ship_segment[i].module,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 360, 0, 10,0,1,0);
				}
			}

//Sounds

sound_priority = 1

explosion_sound = snd_explosion_large_01
ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 600, 800, 1);

// Debris particles for if it blows up

debris_parts[0] = spr_debris_player_1
debris_parts[1] = spr_debris_player_2
debris_parts[2] = spr_debris_player_3
debris_parts[3] = spr_module_cockpit_1