event_inherited();

// Ship stats

obj_health = 25
max_health = 25
max_rotation_speed = 100;
max_speed_base = 5

///

var module_number = 0

/* module */			modules[module_number,0] = scr_create_random_enemy_cockpit();
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 24

module_number = 1

/* module */			modules[module_number,0] = instance_create_depth(x,y,-10,obj_module_engine_enemy);
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = 0
/* placement dist */	modules[module_number,3] = 0

module_number = 2

if irandom(2) == 0
	/* module */			modules[module_number,0] = instance_create_depth(0,0,-10,obj_module_bomb)
else 
	/* module */			modules[module_number,0] = scr_create_random_enemy_weapon();
/* module holder */		modules[module_number,1] = instance_create_depth(x,y,-10,obj_module_holder);
/* placement angle */	modules[module_number,2] = -90
/* placement dist */	modules[module_number,3] = 24
with(modules[module_number,0]){
	i = irandom(3)
	switch (i){
		case 0:	offset_angle = 0; break;
		case 1:	offset_angle = 0; break;
		case 2: offset_angle = -90; break;
		case 3: offset_angle = 180; break;
		}
	}

//

for(var i = 0; i < array_height_2d(modules); i+=1;){
	modules[i,1].module = modules[i,0]
	modules[i,1].owner = id
	modules[i,1].persistent = false
	modules[i,1].x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
	modules[i,1].y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
	modules[i,0] = modules[i,1].module // update the array to include each module from each module holder 
	if scr_exists(modules[i,0]){
		modules[i,0].owner = id
		modules[i,0].persistent = false
		modules[i,0].visible = true
		modules[i,0].phy_position_x = modules[i,1].x
		modules[i,0].phy_position_y = modules[i,1].y
		modules[i,0].phy_rotation = phy_rotation + modules[i,0].offset_angle
		with (modules[i,0])
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,0,1,0);
			}
	}

gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2
