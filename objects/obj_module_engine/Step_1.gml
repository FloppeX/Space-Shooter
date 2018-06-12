event_inherited();
if instance_exists(owner) and owner != noone{
	owner.max_speed_bonus += 1
	}
else
	instance_destroy()