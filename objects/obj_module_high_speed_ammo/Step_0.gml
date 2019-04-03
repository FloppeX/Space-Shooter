event_inherited();

module_name = "High speed ammo"

with(obj_module_gun)
	if owner == other.owner{
		//bullet_color = c_purple
		bullet_speed_multiplier += 0.5
		}