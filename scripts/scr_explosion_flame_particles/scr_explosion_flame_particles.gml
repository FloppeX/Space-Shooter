var number_of_particles = argument0

var tmp_size,tmp_speed,tmp_direction,tmp_life;
repeat(number_of_particles){
	tmp_size = 0.4 + random(0.3)
	part_type_size(global.flame_particle,tmp_size,tmp_size,0,0);
	tmp_speed = 1.5 + random(1.5)
	part_type_speed(global.flame_particle,tmp_speed,tmp_speed,-0.03,0);
	tmp_direction = random(359)
	part_type_direction(global.flame_particle,tmp_direction,tmp_direction,0,0);
	tmp_life = 80+random(120)
	part_type_life(global.flame_particle,tmp_life,tmp_life);
	
	part_particles_create(global.part_system_above,phy_position_x, phy_position_y, global.flame_particle, 1);
	part_particles_create(global.part_system_above,mirror_x, phy_position_y, global.flame_particle, 1);
	part_particles_create(global.part_system_above,phy_position_x, mirror_y, global.flame_particle, 1);
	part_particles_create(global.part_system_above,mirror_x, mirror_y, global.flame_particle, 1);
}
/*
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);