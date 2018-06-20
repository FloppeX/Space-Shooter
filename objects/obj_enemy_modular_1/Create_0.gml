event_inherited();

// Ship stats

obj_health = 30
max_health = 30
max_rotation_speed = 90;


///


module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[0].owner = id
module_holders[0].placement_offset_angle = 0
module_holders[0].placement_offset_distance = 24
module_holders[0].module = scr_create_random_enemy_cockpit();
with(module_holders[0].module){
	}

module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].owner = id
module_holders[1].placement_offset_angle = 90
module_holders[1].placement_offset_distance = 24
module_holders[1].module = scr_create_random_enemy_module();
with(module_holders[1].module){
	var i = irandom(3)
	switch (i){
		case 0:
		case 1:	offset_angle = 0; break;
		case 2:	offset_angle = 180; break;
		case 3: offset_angle = 270; break;
		}
	}

module_holders[2] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[2].owner = id
module_holders[2].placement_offset_angle = 0
module_holders[2].placement_offset_distance = 0
module_holders[2].module = instance_create_depth(x,y,-10,obj_module_engine_enemy);
with(module_holders[2].module){

	}

module_holders[3] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[3].owner = id
module_holders[3].placement_offset_angle = -90
module_holders[3].placement_offset_distance = 24
module_holders[3].module = scr_create_random_enemy_module();
with(module_holders[3].module){
	var i = irandom(3)
	switch (i){
		case 0:
		case 1:	offset_angle = 0; break;
		case 2:	offset_angle = 180; break;
		case 3: offset_angle = 90; break;
		}
	}

for (var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		persistent = false
		if module != noone{
			module.owner = other;
			module.visible = false
			module.persistent = false
			}
		}

gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2