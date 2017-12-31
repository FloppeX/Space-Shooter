duration_timer -= 1

if duration_timer <= -1{
	part_emitter_stream(global.part_system_above,flame_emitter,global.flame_particle,0);
	part_emitter_stream(global.part_system_below,smoke_emitter,global.smoke_particle,10);
	}
if duration_timer <= -4
	part_emitter_stream(global.part_system_below,smoke_emitter,global.smoke_particle,0);
if duration_timer <= -300{
	part_emitter_destroy(global.part_system_above,flame_emitter)
	part_emitter_destroy(global.part_system_below,smoke_emitter)
	instance_destroy();
	}
	
// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();