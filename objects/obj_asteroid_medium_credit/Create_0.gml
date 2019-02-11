event_inherited();

sprite_index = spr_asteroid_med_credit

pickup_objects = irandom(1)+1

pickup_object_type = obj_pickup_credit;

if irandom(99) <= global.asteroid_chance_credit * 3
	child_object = obj_asteroid_small_credit