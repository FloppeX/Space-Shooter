duration_timer -= 1


temp_distance = 0;
temp_angle = 0;

temp_distance = irandom(radius)
temp_angle = random(360)

if duration_timer >= 0{
	draw_set_color(c_yellow)
	draw_circle(x,y,radius,false)
}

if duration_timer == 0{
	repeat(1){
		temp_distance = irandom(radius)
		temp_angle = random(360)
		part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.smoke_particle, 1);
		}
	}
	
if duration_timer <= -300
	instance_destroy();

scr_find_mirror_positions();