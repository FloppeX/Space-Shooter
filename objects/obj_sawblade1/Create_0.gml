target_position_x = 0
target_position_y = 0

rotation = 0
rotation_speed = 0
rotation_speed_change = 0.5
target_rotation_speed = 10

damage = 3

play_sound = false
current_sound = noone
sawblade_sound = snd_sawblade
sawblade_audio_emitter = audio_emitter_create()
audio_emitter_falloff(sawblade_audio_emitter, 100, 800, 1);