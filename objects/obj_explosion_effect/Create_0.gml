mirror_x = 0;
mirror_y = 0;

scr_find_mirror_positions();

radius = 40

temp_distance = 0;
temp_angle = 0;

duration_explosion = 1;
duration_timer = duration_explosion;

//flame_emitter = part_emitter_create(global.part_system_above);
//part_emitter_region(global.part_system_above,flame_emitter,x,x,y,y,ps_shape_ellipse,1);
//part_emitter_stream(global.part_system_above,flame_emitter,global.flame_particle,12);
temp_distance = irandom(temp_distance)
temp_angle = random(360)
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);


smoke_emitter = part_emitter_create(global.part_system_below);
part_emitter_region(global.part_system_below,smoke_emitter,x-40,x+40,y-40,y+40,ps_shape_ellipse,1);
part_emitter_stream(global.part_system_below,smoke_emitter,global.smoke_particle,0);