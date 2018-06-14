event_inherited();

travel_speed = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)

my_shield.phy_position_x = phy_position_x
my_shield.phy_position_y = phy_position_y
my_shield.phy_rotation = phy_rotation

//

activated = true

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

if my_shield.obj_health <= 0 {
	if my_shield.phy_active == true
		audio_play_sound_on(module_audio_emitter,snd_shield_power_down,0,owner.sound_priority)
	my_shield.phy_active = false
	shield_active = false;
	recharge_timer -= 1
	if recharge_timer <= 0{
		recharge_timer = recharge_delay
		my_shield.obj_health = 0.001
		my_shield.phy_active = true
		shield_active = true;
		audio_play_sound_on(module_audio_emitter,snd_shield_power_up,0,owner.sound_priority)
		}
	}
else 
	if my_shield.obj_health < shield_health
		my_shield.obj_health += recharge_each_step
	
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
	part_type_size(shield_particle,shield_current_size,shield_current_size,0,0.02);
	part_type_speed(shield_particle,travel_speed,travel_speed,0,0.1);  
	part_type_direction(shield_particle,travel_direction,travel_direction,0,0);
	part_type_orientation(shield_particle,-phy_rotation,-phy_rotation,0,0,0);
	part_particles_create(global.part_system_above, phy_position_x, phy_position_y, shield_particle, 3);
	}