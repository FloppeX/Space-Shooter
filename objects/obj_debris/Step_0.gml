
destruction_timer -= 1

if destruction_timer <= 0
	instance_destroy();

if phy_speed > max_speed
	phy_linear_damping = 1.8
else 
	phy_linear_damping = 0.4
	
phy_angular_velocity = clamp(phy_angular_velocity,-max_rotation_speed,max_rotation_speed)

scr_find_mirror_positions();

scr_wrap_room();