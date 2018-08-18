if scr_exists(closest_ship)
	if closest_ship.obj_health >= closest_ship.max_health
		closest_ship = noone

event_inherited();


