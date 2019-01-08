// Description text
value = argument0
modifier_description = ("Ratling gunner")

// Modifier script

for(var i = 0; i < array_height_2d(modules); i+=1;)
	if scr_exists(modules[i,0]){
		modules[i,0].bullet_spread_multiplier += 2
		modules[i,0].bullet_interval_multiplier -= 0.5
		}