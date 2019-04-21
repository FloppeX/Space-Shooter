// Description text
value = argument0
modifier_description = ("Bloodsucker")

// Modifier script

if room == rm_space or room == rm_boss
	repeat(global.enemies_killed){
			obj_health += 10
			audio_play_sound_on(ship_audio_emitter,snd_slurp_blood,0,1)
			}
	