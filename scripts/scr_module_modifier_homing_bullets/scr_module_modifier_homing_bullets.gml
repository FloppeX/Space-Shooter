if instance_exists(bullets[0])
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		with(bullets[i])
		scr_add_modifier(scr_bullet_modifier_seek)
		//modifiers[0] = scr_bullet_modifier_seek //scr_add_modifier(scr_bullet_modifier_seek) //modifiers[0] = scr_bullet_modifier_seek