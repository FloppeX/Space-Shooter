event_inherited();

temp_obj = instance_find(obj_player,0)

if owner == temp_obj{
	with(temp_obj)
		scr_add_modifier_new(scr_ship_modifier_squidface_geologist,300,"Squidface geologist","Find more particles in asteroids",spr_crew_squidface_geologist);
	physics_joint_delete(joint)
	instance_destroy()
	}