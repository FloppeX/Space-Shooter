event_inherited();

// Increased health? Resistance to electricity?

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_rock_man,0,"Rock man","More health. Electricity resistance",spr_crew_rock_man);
	physics_joint_delete(joint)
	instance_destroy()
	}

