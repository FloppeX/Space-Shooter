event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_arachnoid_harvester,0,"Arachnoid harvester","Increased pickup range",spr_crew_arachnoid);
	physics_joint_delete(joint)
	instance_destroy()
	}