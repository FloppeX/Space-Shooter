event_inherited();
phy_rotation = owner.phy_rotation + offset_angle + rotation_add

if image_index == 0
	image_speed = 0

bullet_timer -= 1;
shoot = false
if activated and bullet_timer <= 0 and owner.energy > energy_cost{
		shoot = true
		scr_shoot();
		image_index = 1;
		image_speed = 1;
		owner.energy -= energy_cost;
		}
 
