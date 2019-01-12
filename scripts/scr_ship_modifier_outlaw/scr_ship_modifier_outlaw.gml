// Description text
value = argument0
modifier_description = ("Outlaw")

// Modifier script

for(var i = 0; i < array_height_2d(modules); i+=1;)
	if scr_exists(modules[i,0])
		if irandom(5) == 0
			modules[i,0].bullet_damage_multiplier +=2