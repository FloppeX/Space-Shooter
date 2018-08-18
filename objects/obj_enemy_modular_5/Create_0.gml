event_inherited();

// Ship stats

obj_health = 25
max_health = 25
max_rotation_speed = 100;
max_speed_base = 6

///


var module_number = 0

module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[module_number].owner = id
module_holders[module_number].placement_offset_angle = 0
module_holders[module_number].placement_offset_distance = 24
module_holders[module_number].module = scr_create_random_enemy_cockpit();
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 0,10,3,1,0);

module_number = 1

module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[module_number].owner = id
module_holders[module_number].placement_offset_angle = 0
module_holders[module_number].placement_offset_distance = 0
module_holders[module_number].module = instance_create_depth(x,y,-10,obj_module_engine_enemy);
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 0,10,3,1,0);

module_number = 2

module_holders[module_number] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[module_number].owner = id
module_holders[module_number].placement_offset_angle = 90
module_holders[module_number].placement_offset_distance = 24
if irandom(2) == 0
		module_holders[module_number].module = instance_create_depth(0,0,-10,obj_module_bomb)
else
	module_holders[module_number].module = scr_create_random_enemy_module();
with(module_holders[module_number].module){
	i = irandom(3)
	switch (i){
		case 0:	offset_angle = 0; break;
		case 1:	offset_angle = 0; break;
		case 2: offset_angle = 90; break;
		case 3: offset_angle = 180; break;
		}
	}
module_holders[module_number].module.phy_position_x = phy_position_x + lengthdir_x(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.phy_position_y = phy_position_y + lengthdir_y(module_holders[module_number].placement_offset_distance,-phy_rotation+module_holders[module_number].placement_offset_angle)
module_holders[module_number].module.joint = physics_joint_revolute_create(id, module_holders[module_number].module,module_holders[module_number].module.phy_position_x,module_holders[module_number].module.phy_position_y,module_holders[module_number].module.offset_angle, module_holders[module_number].module.offset_angle, 0,10,3,1,0);
	
for (var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		persistent = false
		if module != noone{
			module.owner = other
			module.visible = true
			module.persistent = false
			}
		}
	
gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2