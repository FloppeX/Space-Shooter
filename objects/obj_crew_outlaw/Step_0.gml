event_inherited();

// Chance of homing shots

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_outlaw,0,"Outlaw","Weapons have chance of triple damage",spr_crew_outlaw);
	physics_joint_delete(joint)
	instance_destroy()
	}
