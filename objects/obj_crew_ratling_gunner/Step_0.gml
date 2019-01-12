event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_ratling_gunner,0,"Ratling gunner","Rate of fire +++",spr_crew_ratling_gunner);
	physics_joint_delete(joint)
	instance_destroy()
	}