var h = irandom(10)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_crew_ratling_gunner);break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_crew_telekinetic_gunner);break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_crew_bloodsucker);break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_crew_outlaw);break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_crew_rock_man);break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_crew_arachnoid_harvester);break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_crew_mechanoid_gunsmith);break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_crew_mechanoid_lovebot);break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_crew_squidface_geologist);break;
		case 9: temp_module = instance_create_depth(0,0,-10,obj_crew_mechanoid_prospector);break;
		case 10: temp_module = instance_create_depth(0,0,-10,obj_crew_brawler);break;
		}
	
return temp_module;
