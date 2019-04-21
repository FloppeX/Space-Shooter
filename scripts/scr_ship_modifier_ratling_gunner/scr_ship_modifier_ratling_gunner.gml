// Description text
value = argument0
modifier_description = ("Ratling gunner")

// Modifier script

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i].module){
		ship_segment[i].module.bullet_spread_bonus += 5
		ship_segment[i].module.recoil_force_multiplier += 0.1
		ship_segment[i].module.bullet_spread_multiplier += 0.4
		ship_segment[i].module.bullet_interval_multiplier -= 0.3
		}