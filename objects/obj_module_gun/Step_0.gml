event_inherited();



if image_index == 0
	image_speed = 0

bullet_timer -= 1;

if activated and bullet_timer <= 0 and owner.energy > energy_cost{
		scr_shoot();
		image_index = 1;
		image_speed = 1;
		owner.energy -= energy_cost;
		}
 