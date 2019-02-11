event_inherited()

sprite_index = spr_asteroid_big_credit

pickup_objects = irandom(1)+2

pickup_object_type = obj_pickup_credit;

if irandom(99) <= global.asteroid_chance_credit * 3
	child_object = obj_asteroid_medium_credit