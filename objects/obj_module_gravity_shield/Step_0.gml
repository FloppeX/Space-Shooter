event_inherited();

//

// Animation

if image_index < 1
	casing_retracted = true;
else 
	casing_retracted = false;
	
if image_index > image_number -2
	casing_extended = true;
else
	casing_extended = false;

if activated and !casing_extended
	image_speed = 1;

if activated and casing_extended
	image_speed = 0;
	
if !activated and !casing_retracted
	image_speed = -1;
	
if !activated and casing_retracted
	image_speed = 0;	
 
if casing_extended
	ready_to_go = true
else ready_to_go = false

//
if activated and owner.energy < energy_cost
	activated = false
if activated and ready_to_go{
	owner.energy -= energy_cost
	scr_gravity_push(obj_parent_physical,gravity_radius,gravity_force)
	scr_gravity_push(obj_projectile,gravity_radius,gravity_force)

	}

if activated and ready_to_go
		shield_current_size = shield_current_size + (shield_max_size - shield_current_size)/size_change_coefficient	
else 
		shield_current_size = shield_current_size - shield_current_size/size_change_coefficient	

	
if shield_current_size > 0{
	part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.1);
	part_type_speed(shield_particle,phy_speed,phy_speed,0,0.3);  
	part_type_direction(shield_particle,-phy_rotation,-phy_rotation,0,0);
	part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 2);
}