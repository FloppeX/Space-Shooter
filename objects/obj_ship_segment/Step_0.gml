phy_rotation = owner.phy_rotation

// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

//scr_wrap_room();

// Adjust module cost

if scr_exists(module)
	module_cost = module.cost
else module_cost = 0