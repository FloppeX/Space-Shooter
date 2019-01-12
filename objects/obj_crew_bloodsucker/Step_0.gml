event_inherited();

// Regain health after each kill?

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_bloodsucker,0,"Bloodsucker","Gain health from dead enemies",spr_crew_bloodsucker);
	physics_joint_delete(joint)
	instance_destroy()
	}
