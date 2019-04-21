light_timer -= 1;

if image_index >= image_number -1
	image_speed = 0
	
if light_timer <= 0{
	image_index = 0
	image_speed = 1
	light_timer = 30
	}

				
if explode{
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	for (i=0;i<instance_number(obj_parent_physical);i+=1){
		temp_instance = instance_find(obj_parent_physical, i);
				if temp_instance != noone{
					temp_distance = point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y)
					if temp_distance <= explosion_range{
						with(temp_instance){
							obj_health -= other.damage
							if object_is_ancestor(object_index, obj_player) or object_is_ancestor(object_index, obj_enemy_ship_new)
								disabled_timer += 10;
							}
						}
					}
		}
	instance_destroy();	
	}
	
// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();