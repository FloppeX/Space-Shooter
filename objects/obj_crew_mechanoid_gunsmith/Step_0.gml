event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_mechanoid_gunsmith,0,"Mechanoid gunsmith","Increased range and recoil",spr_crew_mechanoid_1);
	physics_joint_delete(joint)
	instance_destroy()
	}