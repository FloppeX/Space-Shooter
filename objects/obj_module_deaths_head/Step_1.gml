event_inherited();

module_name = "Deaths head"

with(obj_module_gun)
	if owner == other.owner{
		//bullet_color = c_purple
		bullet_damage_bonus += 1
		}