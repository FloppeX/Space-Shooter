event_inherited();

obj_health = 16;

i = irandom(1)
if i == 0
	sprite_index = spr_asteroid_med_1
if i == 1 
	sprite_index = spr_asteroid_med_2

child_object = obj_asteroid_small;
death_effect_size = 1;

var i = irandom(4)

if i == 0{
	pickup_objects = irandom(1)+1
	var h = irandom(2)
	switch(h){
	case 0:
		pickup_object_type = obj_pickup_credit;
		sprite_index = spr_asteroid_med_credit;
		break;
	case 1:
		pickup_object_type = obj_pickup_health;
		sprite_index = spr_asteroid_med_health;
		break;	
	case 2:
		pickup_object_type = obj_pickup_particles;
		sprite_index = spr_asteroid_med_particles;
		break;
	}
}
	