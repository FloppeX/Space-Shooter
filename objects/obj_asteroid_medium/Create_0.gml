event_inherited();

obj_health = 16;

damage = 6
push_force = 20//900

i = irandom(1)
if i == 0
	sprite_index = spr_asteroid_med_1
if i == 1 
	sprite_index = spr_asteroid_med_2

child_object = obj_asteroid_small;
death_effect_size = 1;


var random_number = irandom(99)
if random_number <= global.asteroid_chance_credit
	child_object =  obj_asteroid_small_credit
	else {if random_number <= (global.asteroid_chance_credit + global.asteroid_chance_health)
		child_object =  obj_asteroid_small_health
		else {if random_number<= (global.asteroid_chance_credit + global.asteroid_chance_health + global.asteroid_chance_particles)
			child_object =  obj_asteroid_small_particles
			}
		}
	