event_inherited();

with(obj_module_gun)
	if owner == other.owner{
		//bullet_color = c_purple
		scr_add_modifier(scr_module_modifier_aim_towards_enemy)
		}