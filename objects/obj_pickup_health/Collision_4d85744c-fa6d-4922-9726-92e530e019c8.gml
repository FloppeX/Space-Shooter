if other.obj_health < other.max_health{
	other.obj_health += 10
	audio_play_sound_on(other.ship_audio_emitter,snd_collect_item_2,0,1)
	instance_destroy();
	}
