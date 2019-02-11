var soundid,sound_x,sound_y,z,falloff_ref, falloff_max, falloff_factor, loop, priority;
soundid = argument0
sound_x = argument1
sound_y = argument2
z = argument3
falloff_ref = argument4
falloff_max = argument5
falloff_factor = argument6
loop = argument7
priority = argument8

audio_play_sound_at(soundid,sound_x,sound_y,z,falloff_ref, falloff_max, falloff_factor, loop, priority)
audio_play_sound_at(soundid,mirror_x,sound_y,z,falloff_ref, falloff_max, falloff_factor, loop, priority)
audio_play_sound_at(soundid,sound_x,mirror_y,z,falloff_ref, falloff_max, falloff_factor, loop, priority)
audio_play_sound_at(soundid,mirror_x,mirror_y,z,falloff_ref, falloff_max, falloff_factor, loop, priority)
