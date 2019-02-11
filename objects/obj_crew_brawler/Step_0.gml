event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_brawler,300,"Brawler","Punches ships that you touch",spr_crew_brawler);
	physics_joint_delete(joint)
	instance_destroy()
	}