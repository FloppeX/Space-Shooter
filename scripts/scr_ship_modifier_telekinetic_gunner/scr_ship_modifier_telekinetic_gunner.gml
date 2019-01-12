// Description text
value = argument0
modifier_description = ("Telekinetic gunner")

// Modifier script

if scr_timer(120)
	for(var i = 0; i < array_height_2d(modules); i+=1;)
		if scr_exists(modules[i,0])
			if !scr_check_has_modifier(modules[i,0],scr_module_modifier_homing_bullets)
				with(modules[i,0])
					scr_add_modifier_new(scr_module_modifier_homing_bullets,0,"Telepathic aim",0,0)