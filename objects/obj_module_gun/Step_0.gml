event_inherited();
barrel_length = 10
//

bullet_timer -= 1;

if global.gamepad_button_x and bullet_timer <= 0
	scr_shoot();