if obj_health <= 0
	obj_health = 0
	
if owner = noone or !instance_exists(owner)
	instance_destroy()