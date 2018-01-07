
//

bullet_timer -= 1;

if image_index == 0
	boom_retracted = true;
	
if image_index == image_number -1 
	boom_extended = true;

if activated and !boom_extended{
	image_speed = 1;
	boom_retracted = false;
	}
	
if activated and boom_extended
	image_speed = 0;
	
if !activated and !boom_retracted{
	image_speed = -1;
	boom_extended = false;
	}
	
if !activated and boom_retracted
	image_speed = 0;	
	
if activated and boom_extended and bullet_timer <= 0 and owner.energy > energy_cost{
	scr_shoot();
	bullet.phy_speed_x = 0
	bullet.phy_speed_y = 0
	bullet.color = bullet_color
	owner.energy -= energy_cost;
	}
/*
if image_index >= 9 {
	part_particles_create(global.part_system_below, phy_position_x+lengthdir_x(barrel_length,-phy_rotation), phy_position_y+ lengthdir_y(barrel_length,-phy_rotation),global.lightning_blob, 8);
	}