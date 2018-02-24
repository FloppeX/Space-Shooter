event_inherited();

my_shield.phy_position_x = phy_position_x
my_shield.phy_position_y = phy_position_y
my_shield.phy_rotation = phy_rotation

//

// Animation

if image_index == 0
	mechanism_retracted = true;
	
if image_index == image_number -1 
	mechanism_extended = true;

if activated and !mechanism_extended{
	image_speed = 1;
	mechanism_retracted = false;
	}
	
if activated and mechanism_extended
	image_speed = 0;
	
if !activated and !mechanism_retracted{
	image_speed = -1;
	mechanism_extended = false;
	}
	
if !activated and mechanism_retracted
	image_speed = 0;	

// Shield properties

if activated{
	if shield_active == false{
		my_shield.phy_active = true
		shield_active = true;
		
		}
	}
else {
	if shield_active == true{
		my_shield.phy_active = false
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
	part_type_orientation(shield_particle,-phy_rotation,-phy_rotation,0,0,0);
	part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 2);
	}