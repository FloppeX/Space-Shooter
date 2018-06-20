event_inherited();

if owner == obj_player
	with(owner)
		for(var i = 0; i < array_length_1d(module_holders); i+=1;)
			with(module_holders[i])
				module.bullet_damage_bonus += 4
				//scr_add_modifier(scr_module_modifier_damage_plus_1);