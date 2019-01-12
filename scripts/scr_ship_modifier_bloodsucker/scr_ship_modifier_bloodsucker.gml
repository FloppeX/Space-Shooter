// Description text
value = argument0
modifier_description = ("Bloodsucker")

// Modifier script

var new_number_of_enemies = instance_number(obj_enemy_ship)

if new_number_of_enemies < number_of_enemies and room == rm_space
	repeat (number_of_enemies - new_number_of_enemies){
		obj_health += 10
		audio_play_sound_on(ship_audio_emitter,snd_slurp_blood,0,1)
		}
	
number_of_enemies = new_number_of_enemies
