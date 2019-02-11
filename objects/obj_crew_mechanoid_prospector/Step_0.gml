event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_mechanoid_prospector,300,"Mechanoid prospector","Find more gold in asteroids",spr_crew_mechanoid_2);
	physics_joint_delete(joint)
	instance_destroy()
	}