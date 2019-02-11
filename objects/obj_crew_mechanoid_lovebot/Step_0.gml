event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_mechanoid_lovebot,300,"Mechanoid lovebot","Seduces nearby enemies",spr_crew_mechanoid_lovebot);
	physics_joint_delete(joint)
	instance_destroy()
	}