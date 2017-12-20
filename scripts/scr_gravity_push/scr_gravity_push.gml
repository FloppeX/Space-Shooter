var obj_type,radius,force, temp_instance, temp_distance,i
obj_type = argument0
radius = argument1
force = argument2

for(i=0;i<instance_number(obj_type);i+=1){
		temp_instance = instance_find(obj_type, i);
			if temp_instance != noone{
				temp_distance = point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y)
				if temp_distance <= radius{
					global.force_x = lengthdir_x(force*temp_instance.phy_mass,point_direction(x,y,temp_instance.x,temp_instance.y))
					global.force_y = lengthdir_y(force*temp_instance.phy_mass,point_direction(x,y,temp_instance.x,temp_instance.y))
					with (temp_instance)
					    physics_apply_impulse(x,y,global.force_x,global.force_y)
					}
				}
		}