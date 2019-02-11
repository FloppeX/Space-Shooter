// Description text

modifier_description = ("Mechanoid lovebot")

// Modifier script

var range = argument0; // 300?

// Find target

if scr_timer(60){ // Check every second

	var closest_distance = range
	var temp_distance = 0
	var target = noone;
	
	for(var i = 0; i < instance_number(obj_enemy_ship); i+=1;){
		target = instance_find(obj_enemy_ship,i)
		temp_distance = scr_wrap_closest_distance_to_instance(target)
		if temp_distance <= range
			if irandom(99) < 10{ // base chance of enemies falling in love
				love_effect = instance_create_depth(target.phy_position_x,target.phy_position_y,10,obj_effect_charmed)
				love_effect.target = target
				}
		}
	/*
	for(var i = 0; i < instance_number(obj_enemy_ship); i+=1;)
		temp_distance = scr_wrap_closest_distance_to_instance(instance_find(obj_enemy_ship,i))
		if temp_distance <= closest_distance{
			target = instance_find(obj_enemy_ship,i)
			closest_distance = temp_distance
			}
	*/

	}