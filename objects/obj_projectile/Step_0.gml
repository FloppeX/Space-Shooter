if timer == 0{
	starting_range = range
	starting_damage = damage
	}

timer += 1

// projectile stuff
range -= phy_speed;
phy_bullet = true;

// Apply effects of modifiers

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if modifiers[i,0] != noone
		script_execute(modifiers[i,0])
		

// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();

// Sound

audio_emitter_falloff(projectile_audio_emitter, 0, starting_range, 1);

var temp_pitch = 8/(damage+0.1)
temp_pitch = clamp(temp_pitch,20,0.5)
audio_emitter_pitch(projectile_audio_emitter,temp_pitch)
audio_emitter_position(projectile_audio_emitter,phy_position_x,phy_position_y,0)
audio_emitter_velocity(projectile_audio_emitter, phy_speed_x, phy_speed_y, 0);