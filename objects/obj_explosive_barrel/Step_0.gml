if obj_health <= 0
	{

	scr_create_explosion_medium(phy_position_x,phy_position_y)
	instance_destroy();
	exit;
	}
	
if phy_speed > max_speed
	phy_linear_damping = 0.2
else 
	phy_linear_damping = 0
	
phy_angular_velocity = clamp(phy_angular_velocity,-max_rotation_speed,max_rotation_speed)

// Find mirror positions

scr_find_mirror_positions();

scr_wrap_room();