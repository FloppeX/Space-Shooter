event_inherited();

obj_health = 32;

child_object = obj_asteroid_medium;
death_effect_size = 2;

var i = irandom(5)

if i == 0{
	pickup_object_number = irandom(2)+1
	var h = irandom(2)
	switch(h){
	case 0:
		pickup_object_type = obj_pickup_credit;
		sprite_index = spr_asteroid_big_credit;
		break;
	case 1:
		pickup_object_type = obj_pickup_health;
		sprite_index = spr_asteroid_big_health;
		break;	
	case 2:
		pickup_object_type = obj_pickup_particles;
		sprite_index = spr_asteroid_big_particles;
		break;
	}
}
	