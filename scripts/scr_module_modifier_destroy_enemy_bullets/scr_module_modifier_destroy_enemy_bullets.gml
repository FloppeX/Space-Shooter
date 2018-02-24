// Description text

modifier_description = "Destroys enemy bullets"

// Modifier actions

if instance_exists(bullets[0])
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		with(bullets[i])
			scr_add_modifier(scr_bullet_modifier_destroy_enemy_bullets)