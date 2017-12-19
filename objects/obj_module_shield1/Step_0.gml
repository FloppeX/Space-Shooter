event_inherited();

//

// Shield properties

if global.gamepad_button_b 
	activate_shield = true
else 
	activate_shield = false

if activate_shield{
	if shield_active == false{
		my_shield = physics_fixture_bind(shield, id)
		shield_active = true;
		
		}
	}
else {
	if shield_active == true{
		physics_remove_fixture(id,my_shield)
		shield_active = false;
		}
	}
	

if shield_active{
	if shield_current_size < shield_max_size
		shield_current_size = shield_current_size + (shield_max_size - shield_current_size)/size_change_coefficient	
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