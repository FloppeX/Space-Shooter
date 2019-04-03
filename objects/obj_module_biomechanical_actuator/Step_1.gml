event_inherited();

module_name = "Biomechanical actuators"

if scr_timer(120)
with(obj_module_gun)
	if owner == other.owner{
		if !scr_check_has_modifier(id,scr_module_modifier_aim_towards_enemy)
			scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,45,"Auto-turret",noone,noone);
		}