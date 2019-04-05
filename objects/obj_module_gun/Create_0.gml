event_inherited();

baseplate_sprite = spr_baseplate

ready_to_shoot = true

bullet_type_base = obj_bullet_player;
bullet_damage_base = 8;
bullet_range_base = 560
bullet_speed_base = 9;
bullet_speed_randomness_base = 0.25;
bullet_interval_base = 16;
bullet_push_force_base = 5
recoil_force_base = 10
bullet_spread_base = 2	// the total spread angle, adds randomness to bullet direction
bullet_number_base = 1
energy_cost_base = 10
particle_cost_base = 0

bullet_type = bullet_type_base

bullet_damage = bullet_damage_base
bullet_range = bullet_range_base
bullet_speed = bullet_speed_base
bullet_speed_randomness = bullet_speed_randomness_base;
bullet_interval = bullet_interval_base
recoil_force = recoil_force_base
bullet_push_force = bullet_push_force_base
bullet_spread = bullet_spread_base
bullet_number = bullet_number_base
energy_cost = energy_cost_base
particle_cost = particle_cost_base

bullet_range_randomness = 20

recoil_force = 15

activation_button = 3
activated = false
barrel_length = 10
shoot = false
temp_speed_x = 0
temp_speed_y = 0

bullets[0] = noone
bullet_timer = bullet_interval;
bullet_depth = 10
bullet_color = c_lime

sound[0] = snd_blaster_1

// Activation button

switch (offset_angle){
	case 0: activation_button = 4; break;
	case 90: activation_button = 3; break;
	case 180: activation_button = 1; break;
	case 270: activation_button = 2; break;
	}
			
// Placement

switch (offset_angle){
	case 0: placement_req_above = noone; break;
	case 90: placement_req_left = noone; break;
	case 180: placement_req_below = noone; break;
	case 270: placement_req_right = noone; break;
	}