destruction_timer -= 1;

//
if destruction_timer == 0
	for(var i=0;i<instance_number(obj_parent_physical);i+=1){
		temp_instance = instance_find(obj_parent_physical, i)
		if point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y) < radius
			with(temp_instance){
				obj_health -= other.damage
				temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
				var x_force = lengthdir_x(other.force,temp_dir)
				var y_force = lengthdir_y(other.force,temp_dir)
				physics_apply_local_impulse(phy_position_x,phy_position_y,x_force,y_force)
				}
		}

//

if destruction_timer <= -300
	instance_destroy();

scr_find_mirror_positions();