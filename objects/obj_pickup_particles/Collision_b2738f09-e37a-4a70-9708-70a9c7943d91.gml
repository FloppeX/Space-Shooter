if other.particles < other.max_particles{
	other.particles += 10
	audio_play_sound_on(other.ship_audio_emitter,snd_collect_item_2,0,1)
	instance_destroy();
	}
