event_inherited();

obj_health = 25;

i = irandom(4)
if i == 0
	sprite_index = spr_asteroid_small_1
if i == 1 
	sprite_index = spr_asteroid_small_2
if i == 2
	sprite_index = spr_asteroid_small_3
if i == 3 
	sprite_index = spr_asteroid_small_4

child_object = noone;
death_effect_size = 0;