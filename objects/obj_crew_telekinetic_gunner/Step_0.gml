event_inherited();

// Chance of homing shots

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_telekinetic_gunner,0,"Telekinetic gunner","Homing shots",spr_crew_telekinetic_gunner);
	physics_joint_delete(joint)
	instance_destroy()
	}
