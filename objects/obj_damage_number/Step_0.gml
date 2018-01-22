// Bullet stuff
duration_timer -= 1;

if duration_timer <= 0
	instance_destroy();
	
phy_speed_x = 0.95 * phy_speed_x;
phy_speed_y = 0.95 * phy_speed_y;
