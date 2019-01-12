if owner == noone or !instance_exists(owner)
	instance_destroy()

rotation = -owner.phy_rotation
image_angle = rotation

if !instance_exists(module)
	module = noone

// Adjust module cost

if scr_exists(module)
	module_cost = module.cost
else module_cost = 0