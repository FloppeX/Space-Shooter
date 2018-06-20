event_inherited();

// Ship stats

obj_health = 25
max_health = 25
max_rotation_speed = 120;

///


module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[0].owner = id
module_holders[0].placement_offset_angle = 0
module_holders[0].placement_offset_distance = 24
module_holders[0].module = instance_create_depth(x,y,-10,obj_module_enemy_cockpit_1);
with(module_holders[0].module){
	owner = other;
	persistent = false
	}

module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].owner = id
module_holders[1].placement_offset_angle = 0
module_holders[1].placement_offset_distance = 0
module_holders[1].module = scr_create_random_enemy_module();
if irandom(1) == 0
	module_holders[1].module.offset_angle = -90
else 
	module_holders[1].module.offset_angle = 90
with(module_holders[1].module){
	owner = other;
	persistent = false
	}

module_holders[2] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[2].owner = id
module_holders[2].placement_offset_angle = 180
module_holders[2].placement_offset_distance = 24
module_holders[2].module = instance_create_depth(x,y,-10,obj_module_engine_enemy);
with(module_holders[2].module){
	owner = other;
	persistent = false
	}
	
for (var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		persistent = false
		if module != noone{
			module.visible = false
			module.persistent = false
			}
		}
	
gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2