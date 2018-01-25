phy_rotation = owner.phy_rotation + offset_angle + rotation_add
//

bullet_timer -= 1;

if activated and bullet_timer <= 0{
	scr_shoot();
	bullet.color = bullet_color
	}