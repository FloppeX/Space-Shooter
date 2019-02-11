if wormhole_size < 1
	wormhole_size += 0.02


phy_rotation += rotation_speed;
	
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
