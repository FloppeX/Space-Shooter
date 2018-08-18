event_inherited();

obj_health = 8;

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


var i = irandom(5)

if i == 0{
	pickup_object_number = 1//irandom(1)+1
	var h = irandom(2)
	switch(h){
	case 0:
		pickup_object_type = obj_pickup_credit;
		sprite_index = spr_asteroid_small_credit;
		break;
	case 1:
		pickup_object_type = obj_pickup_health;
		sprite_index = spr_asteroid_small_health;
		break;	
	case 2:
		pickup_object_type = obj_pickup_particles;
		sprite_index = spr_asteroid_small_particles;
		break;
	}
}
	