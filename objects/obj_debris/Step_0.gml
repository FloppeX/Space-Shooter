
destruction_timer -= 1

if destruction_timer <= 0
	instance_destroy();

//part_particles_create(global.part_system_below, phy_position_x, phy_position_y, global.smoke_particle, 1);

scr_find_mirror_positions();

scr_wrap_room();