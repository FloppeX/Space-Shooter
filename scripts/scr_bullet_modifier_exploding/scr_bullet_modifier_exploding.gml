color = c_orange

if hit_enemy{
	scr_create_explosion(phy_position_x,phy_position_y,damage * 2,damage,damage)
	instance_destroy()
	}