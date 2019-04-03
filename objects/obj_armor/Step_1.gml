event_inherited();

if instance_exists(owner) and owner != noone{
	owner.max_health_bonus += 10
	}
else
	instance_destroy()