if !scr_exists(owner)
	instance_destroy()
	
	
// fake motion

if owner.target != noone 
	target_rotation_speed = 60
else target_rotation_speed = 5

if rotation_speed < target_rotation_speed
	rotation_speed += rotation_speed_change
if rotation_speed > target_rotation_speed
	rotation_speed -= rotation_speed_change
	

rotation += rotation_speed
rotation = rotation mod 360

// Audio

audio_emitter_position(sawblade_audio_emitter,phy_position_x,phy_position_y,0)
if play_sound{
	if !audio_is_playing(current_sound)
		current_sound = audio_play_sound_on(sawblade_audio_emitter,snd_sawblade,1,1)
	}
else{
	audio_stop_sound(current_sound)
	}
	
play_sound = false

scr_find_mirror_positions();

scr_wrap_room();