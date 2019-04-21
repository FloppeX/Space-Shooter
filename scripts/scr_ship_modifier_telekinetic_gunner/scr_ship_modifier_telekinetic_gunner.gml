// Description text
value = argument0
modifier_description = ("Telekinetic gunner")

// Modifier script

if scr_timer(120)
for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i].module)
			if !scr_check_has_modifier(ship_segment[i].module,scr_module_modifier_homing_bullets)
				with(ship_segment[i].module)
					scr_add_modifier_new(scr_module_modifier_homing_bullets,0,"Telepathic aim",0,0)