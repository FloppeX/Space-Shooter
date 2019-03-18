// Reset values

zoom_in = 0
zoom_out = 0


	
// Keyboard

if keyboard_check_pressed(vk_up)
	global.difficulty_level += 1
	
if keyboard_check_pressed(vk_down)
	global.difficulty_level -= 1