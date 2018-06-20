event_inherited();
if instance_exists(owner) and owner != noone{
	owner.max_speed_bonus += 0.5
	}
else
	instance_destroy()