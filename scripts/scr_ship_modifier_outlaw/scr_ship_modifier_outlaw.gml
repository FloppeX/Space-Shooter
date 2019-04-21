// Description text
value = argument0
modifier_description = ("Outlaw")

// Modifier script

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i].module)
		if irandom(99) <= 20
			ship_segment[i].module.bullet_damage_multiplier +=2