if owner == noone or !instance_exists(owner)
	instance_destroy()

rotation = -owner.phy_rotation
image_angle = rotation

if module != noone and instance_exists(module){
	module.owner = owner
	module.persistent = true
		
	activation_button = module.activation_button

	if owner.object_index == obj_player{
		if owner.gamepad_button[activation_button] == true
				module.activated = true
		else module.activated = false
		}

	}
	
// Adjust module cost

if module != noone
	module_cost = module.cost