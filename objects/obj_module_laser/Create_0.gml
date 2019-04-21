event_inherited();

module_name = "Laser"

bullet_type_base = obj_laser_blast_player
bullet_damage_base = 0.5;
bullet_range_base = 240
bullet_speed_base = 30;
bullet_speed_randomness_base = 0
bullet_interval_base = 2;
bullet_spread_base = 0
bullet_number_base = 1
energy_cost_base = 2
bullet_push_force_base = 0
recoil_force_base = 0
barrel_length = 16

sound[0] = snd_laser_1
sound[1] = snd_laser_2
sound[2] = snd_laser_3
sound[3] = snd_laser_4
sound[4] = snd_laser_5
sound[5] = snd_laser_6
sound[6] = snd_laser_7
sound[7] = snd_laser_8

scr_add_modifier_new(scr_module_modifier_beam_effect,0,"Beam bullets",noone,noone); 