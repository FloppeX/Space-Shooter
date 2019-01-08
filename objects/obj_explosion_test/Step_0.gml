destruction_timer -= 1;


//

if destruction_timer <= -300
	instance_destroy();

scr_find_mirror_positions();