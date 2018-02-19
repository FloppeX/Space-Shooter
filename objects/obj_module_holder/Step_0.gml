rotation = -owner.phy_rotation
image_angle = rotation

if module != noone and instance_exists(module){
	module.owner = owner
	module.persistent = true
	module.phy_speed_x = hspeed
	module.phy_speed_y = vspeed
	module.phy_position_x = x
	module.phy_position_y = y
	module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
	
	switch (module.offset_angle){
		case 0: module.activation_button = 4; break;
		case 90: module.activation_button = 2; break;
		case 180: module.activation_button = 1; break;
		case 270: module.activation_button = 3; break;
		}
	activation_button = module.activation_button

	if gamepad_button[activation_button] == true
			module.activated = true
	else module.activated = false
	module.add_thrust = add_thrust
	}