event_inherited();

//

// Shield properties

physics_mass_properties(0, phy_com_x, phy_com_y, 0)

if global.gamepad_button_b 
	activate_shield = true
else 
	activate_shield = false

if activate_shield{
	//sprite_index = spr_ship_shield;
	if shield_active == false{
		my_shield = physics_fixture_bind(shield, id)
		shield_active = true;
		
		part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
		part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
		part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 2);
		}
	}
else {
	sprite_index = spr_module_shield
	if shield_active == true{
		physics_remove_fixture(id,my_shield)
		shield_active = false;
		}
	}
	
size_change = 0.2
if shield_active{
	if shield_current_size < shield_max_size
		shield_current_size += size_change
	part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.1);
	part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
	part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, shield_particle, 2);
}
else 
	if shield_current_size > 0
		shield_current_size -= size_change
		
// Draw shield particle effect

part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.1);
part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
if shield_current_size > 0
	part_particles_create(global.part_system_below, phy_position_x, phy_position_y, shield_particle, 2);