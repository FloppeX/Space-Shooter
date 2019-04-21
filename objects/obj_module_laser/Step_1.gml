if bullets[0] != noone
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		with(bullets[i])
			if scr_exists(owner){
				sprite_index = spr_laser_glow_2
				scr_add_modifier(scr_bullet_modifier_beam_effect)
				}
				
event_inherited();

