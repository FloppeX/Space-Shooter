event_inherited();

obj_health = 50;

i = irandom(1)
if i == 0
	sprite_index = spr_asteroid_med_1
if i == 1 
	sprite_index = spr_asteroid_med_2

child_object = obj_asteroid_small;
death_effect_size = 1;
