mirror_x = 0;
mirror_y = 0;

duration_explosion = 0;
duration_timer = duration_explosion;

flame_emitter = part_emitter_create(global.part_system_above);
part_emitter_region(global.part_system_above,flame_emitter,x,x,y,y,ps_shape_ellipse,1);
part_emitter_stream(global.part_system_above,flame_emitter,global.flame_particle,16);

smoke_emitter = part_emitter_create(global.part_system_below);
part_emitter_region(global.part_system_below,smoke_emitter,x-60,x+60,y-60,y+60,ps_shape_ellipse,1);
part_emitter_stream(global.part_system_below,smoke_emitter,global.smoke_particle,0);