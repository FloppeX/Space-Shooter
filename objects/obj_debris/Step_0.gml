
destruction_timer -= 1

if destruction_timer <= 0
	instance_destroy();

if phy_speed > max_speed
	phy_linear_damping = 0.2
else 
	phy_linear_damping = 0
	
if phy_angular_velocity > max_rotation_speed or phy_angular_velocity < -max_rotation_speed
	phy_angular_damping = 1
else 
	phy_angular_damping = 0

scr_find_mirror_positions();

scr_wrap_room();