event_inherited();
if image_index == 0
	image_speed = 0
//

bullet_timer -= 1;

if global.gamepad_button_y and bullet_timer <= 0{
		scr_shoot();
		image_index = 1;
		image_speed = 1;
		}
