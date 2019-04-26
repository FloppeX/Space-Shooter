// Description text

modifier_description = "Beam effect"

// Modifier actions


if bullets[0] != noone
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		with(bullets[i])
			scr_add_modifier(scr_bullet_modifier_decreasing_damage)