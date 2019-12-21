event_inherited();

sprite_index = spr_asteroid_med_health

pickup_objects = 1//irandom(1)+1

pickup_object_type = obj_pickup_health;

//if irandom(99) <= global.asteroid_chance_health * 3
	child_object = obj_asteroid_small_health