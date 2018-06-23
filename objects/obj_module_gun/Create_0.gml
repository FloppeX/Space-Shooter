event_inherited();

baseplate_sprite = spr_baseplate

bullet_type_base = obj_bullet_player;
bullet_damage_base = 8;
bullet_range_base = 560
bullet_speed_base = 7;
bullet_speed_randomness_base = 0;
bullet_interval_base = 16;
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
bullet_spread = bullet_spread_base
bullet_number = bullet_number_base
energy_cost = energy_cost_base
particle_cost = particle_cost_base

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