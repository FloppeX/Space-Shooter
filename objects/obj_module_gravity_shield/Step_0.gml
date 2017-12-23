event_inherited();

//

// Shield properties

if global.gamepad_button_b 
	activate_shield = true
else 
	activate_shield = false

/*
if activate_shield
	if shield_active == false
		shield_active = true;
else {
	if shield_active == true
		shield_active = false;
		
	}
*/
	
if activate_shield{
	scr_gravity_push(obj_bullet,gravity_radius,gravity_force)
	scr_gravity_push(obj_enemy_ship,gravity_radius,gravity_force)
	scr_gravity_push(obj_asteroid,gravity_radius,gravity_force)
	}

if activate_shield
		shield_current_size = shield_current_size + (shield_max_size - shield_current_size)/size_change_coefficient	
else 
		shield_current_size = shield_current_size - shield_current_size/size_change_coefficient	

	
if shield_current_size > 0{
	part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.1);
	part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
	part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
	part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 2);
}