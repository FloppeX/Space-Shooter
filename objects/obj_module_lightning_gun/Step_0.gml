barrel_length = 10
//

bullet_timer -= 1;

if activated and bullet_timer <= 0{
	scr_shoot();
	bullet.phy_speed_x = 0
	bullet.phy_speed_y = 0
	bullet.color = bullet_color
	}