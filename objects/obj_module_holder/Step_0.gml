rotation = -owner.phy_rotation
image_angle = rotation

if module == noone
	exit
	
module.owner = owner
module.persistent = true
module.visible = false

module.phy_speed_x = hspeed
module.phy_speed_y = vspeed
module.phy_position_x = x
module.phy_position_y = y
module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
module.activation_button = activation_button


if gamepad_button[activation_button] == true
		module.activated = true
else module.activated = false
module.add_thrust = add_thrust