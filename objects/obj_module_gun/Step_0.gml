event_inherited();
phy_rotation = owner.phy_rotation + offset_angle + rotation_add

if image_index == 0
	image_speed = 0

bullet_timer -= 1;
shoot = false
if activated and bullet_timer <= 0 and owner.energy > energy_cost{
	shoot = true
	scr_shoot();
	image_index = 1;
	image_speed = 1;
	owner.energy -= energy_cost;
	
	// Recoil
	with(owner)
		physics_apply_impulse(other.phy_position_x,other.phy_position_y,lengthdir_x(other.recoil_force,-other.phy_rotation+180),lengthdir_y(other.recoil_force,-other.phy_rotation+180))
	
	// Sound
	if sound != noone
		weapon_sound = audio_play_sound_on(module_audio_emitter,sound,0,1)
	
	}
 
