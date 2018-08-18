if owner == noone or !instance_exists(owner)
	instance_destroy()

rotation = -owner.phy_rotation
image_angle = rotation

// Adjust module cost

if module != noone
	module_cost = module.cost