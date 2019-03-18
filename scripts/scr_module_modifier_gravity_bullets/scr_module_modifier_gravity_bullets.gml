// Description text

// Modifier actions

var chance_for_gravity_bullet = 30

if bullets[0] != noone
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		if irandom(100) < chance_for_gravity_bullet
			with(bullets[i])
				scr_add_modifier(scr_bullet_modifier_gravity)
