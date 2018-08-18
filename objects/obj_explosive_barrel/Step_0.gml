if obj_health <= 0
	{

	boom = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	boom.radius = 300
	boom.damage = 50
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