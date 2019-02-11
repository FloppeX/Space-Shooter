// Description text

// Modifier actions

if bullets[0] != noone
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		if irandom(99) <= 20 // 20% chance
			with(bullets[i])
				scr_add_modifier(scr_bullet_modifier_seek)