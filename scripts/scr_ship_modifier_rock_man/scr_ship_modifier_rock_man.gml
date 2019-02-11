// Description text
value = argument0
modifier_description = ("Outlaw")

// Modifier script

max_health_bonus = 20

electric_field = instance_place(phy_position_x,phy_position_y,obj_effect_electrified)

if scr_exists(electric_field)
	with(electric_field)
		instance_destroy();