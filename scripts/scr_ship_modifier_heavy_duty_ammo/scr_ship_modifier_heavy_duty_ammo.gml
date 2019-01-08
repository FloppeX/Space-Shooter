// Description text
value = argument0
modifier_description = ("Heavy-duty ammo")

// Modifier script

for(var i = 0; i < array_height_2d(modules); i+=1;)
	if scr_exists(modules[i,0])
		modules[i,0].bullet_damage_bonus = 1
		