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
	//bullet.phy_speed_x = 0
	//bullet.phy_speed_y = 0
	//bullet.color = bullet_color
	owner.energy -= energy_cost;
	// Sound
	if sound[0] != noone{
		sound_number = irandom(array_length_1d(sound)-1)
		weapon_sound = audio_play_sound_on(module_audio_emitter,sound[sound_number],0,owner.sound_priority)
		}
	audio_sound_pitch(weapon_sound,bullet_interval_base/bullet_interval)
	}


 