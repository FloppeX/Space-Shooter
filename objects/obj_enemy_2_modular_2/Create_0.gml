event_inherited();

// Ship stats

obj_health = 40
max_health = 40
max_rotation_speed = 70;

///


module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[0].owner = id
module_holders[0].placement_offset_angle = 0
module_holders[0].placement_offset_distance = 24
module_holders[0].module = scr_create_random_enemy_2_cockpit();

module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].owner = id
module_holders[1].placement_offset_angle = 90
module_holders[1].placement_offset_distance = 24
module_holders[1].module = scr_create_random_enemy_2_module();
with(module_holders[1].module){
	i = irandom(2)
	switch (i){
		case 0:
		case 1:	offset_angle = 0; break;
		case 2: offset_angle = 270; break;
		}
	}

module_holders[2] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[2].owner = id
module_holders[2].placement_offset_angle = 0
module_holders[2].placement_offset_distance = 0
module_holders[2].module = scr_create_random_enemy_2_module();
with(module_holders[2].module)
	offset_angle = 180

module_holders[3] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[3].owner = id
module_holders[3].placement_offset_angle = -90
module_holders[3].placement_offset_distance = 24
module_holders[3].module = scr_create_random_enemy_2_module();
with(module_holders[3].module){
	i = irandom(2)
	switch (i){
		case 0:	
		case 1: offset_angle = 0; break;
		case 2: offset_angle = 90; break;
		}
	}
	
module_holders[4] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[4].owner = id
module_holders[4].placement_offset_angle = 135
module_holders[4].placement_offset_distance = 34
module_holders[4].module = instance_create_depth(x,y,-10,obj_module_engine_enemy_team_2);
	
module_holders[5] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[5].owner = id
module_holders[5].placement_offset_angle = -135
module_holders[5].placement_offset_distance = 34
module_holders[5].module = instance_create_depth(x,y,-10,obj_module_engine_enemy_team_2);
	
for (var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		persistent = false
		if module != noone{
			module.owner = other
			module.visible = false
			module.persistent = false
			}
		}

gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2