life_timer += 1

phy_rotation += rotation_speed;


if done_warping {
	death_timer -= 1

	}
if death_timer <= 0{
	instance_destroy();
	}
	
hue_shift_timer -= 1;
if hue_shift_timer <= 0{
	hue_shift_timer = hue_shift_interval;
	hue += hue_shift_amount
	if life_timer >= 50
		hue_2 = hue -50
	hue = hue mod 255
	hue_2 = hue_2 mod 255
	}
	
color = make_color_hsv(hue,255,255)	
color_2 = make_color_hsv(hue_2,255,255)	
rotation += rotation_speed

// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room();



