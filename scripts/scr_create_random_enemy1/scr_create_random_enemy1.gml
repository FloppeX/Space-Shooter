
var temp_xpos,temp_ypos,i;
i = irandom(1)
if i == 0{
		temp_xpos = global.wrap_border_left + random(global.play_area_width)
		temp_ypos = global.wrap_border_top +20
		}
	else{
		temp_xpos = global.wrap_border_left +20
		temp_ypos = global.wrap_border_top + random(global.play_area_height)
		}
	var i = irandom(global.difficulty_level);
	i = clamp(i,0,4)
	
	switch(i){
		case 0: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_1); break;
		case 1: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_2); break;
		case 2: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_3); break;
		case 3: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_4); break;
		case 4: new_enemy = instance_create_depth(temp_xpos,temp_ypos,0,obj_enemy_modular_5); break;
		}
	
	new_enemy.obj_health = new_enemy.obj_health * (1 + 0.2 * global.difficulty_level)
	new_enemy.pickup_objects = 3
	