var h = 5// irandom(4)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_crew_ratling_gunner);break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_crew_telekinetic_gunner);break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_crew_bloodsucker);break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_crew_outlaw);break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_crew_rock_man);break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_crew_arachnoid_harvester);break;
		}
	
return temp_module;
