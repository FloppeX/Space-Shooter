
for (i=0;i<instance_number(obj_enemy_ship);i+=1){
	temp_instance = instance_find(obj_enemy_ship, i);
				if temp_instance != noone{
					temp_distance = point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y)
					if temp_distance <= sensor_range{
						explode = true
						}
					}
	}
				
if explode{
	instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	for (i=0;i<instance_number(obj_enemy_ship);i+=1){
		temp_instance = instance_find(obj_parent_physical, i);
				if temp_instance != noone{
					temp_distance = point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y)
					if temp_distance <= explosion_range{
						with(temp_instance)
							obj_health -= 10
						}
					}
		}
	instance_destroy();	
	}