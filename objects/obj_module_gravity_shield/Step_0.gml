event_inherited();

//

// Shield properties

if global.gamepad_button_b 
	activate_shield = true
else 
	activate_shield = false

if activate_shield
	if shield_active == false
		shield_active = true;

else {
	if shield_active == true
		shield_active = false;
		
	}
	

if shield_active{
	if shield_current_size < shield_max_size
		shield_current_size = shield_current_size + (shield_max_size - shield_current_size)/size_change_coefficient	
	
	for(i=0;i<instance_number(obj_bullet);i+=1){
		temp_instance = instance_find(obj_bullet, i);
			if temp_instance != noone{
				temp_distance = point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y)
				if temp_distance <= gravity_radius{
					global.force_x = lengthdir_x(gravity_force,point_direction(x,y,temp_instance.x,temp_instance.y))
					global.force_y = lengthdir_y(gravity_force,point_direction(x,y,temp_instance.x,temp_instance.y))
					with (temp_instance)
					    physics_apply_impulse(x,y,global.force_x,global.force_y)
					}
				}
		}
	}
else 
	if shield_current_size > 0{
		if shield_current_size > 0
			shield_current_size = shield_current_size - shield_current_size/size_change_coefficient	
		}
		
if shield_current_size > 0.01{
	part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.1);
	part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
	part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
	part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 2);
	}