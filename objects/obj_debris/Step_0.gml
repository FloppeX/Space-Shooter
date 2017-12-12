/// @description Insert description here
// You can write your code in this editor
 
destruction_timer -= 1

if destruction_timer <= 0
	instance_destroy();

scr_find_mirror_positions();

scr_wrap_room();