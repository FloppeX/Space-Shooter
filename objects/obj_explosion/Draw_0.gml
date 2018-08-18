if destruction_timer > 0{
	temp_radius += radius_increase_factor * radius
	temp_radius = clamp(temp_radius,0,radius)
	draw_set_color(c_yellow)
	draw_circle(x,y,temp_radius,false)
}

if destruction_timer == 0{
	repeat(1){
		temp_distance = irandom(radius)
		temp_angle = random(360)
		part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		}
	}
	