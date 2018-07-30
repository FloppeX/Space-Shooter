event_inherited();

//temp_speed_x = phy_position_x - phy_position_xprevious
//temp_speed_y = phy_position_y - phy_position_yprevious

bullet_timer -= 1;
shoot = false

if !activated 
	ready_to_shoot = false
if activated {
	if !(bullet_timer <= 0) 
		ready_to_shoot = false
	if !(owner.energy >= energy_cost)
		ready_to_shoot = false
	if !(owner.particles >= particle_cost)
		ready_to_shoot = false
	}
		
if ready_to_shoot{
	shoot = true
	for(var i = 0; i < bullet_number; i+=1;)
		{
		bullets[i] = instance_create_depth(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),bullet_depth,bullet_type);
		
		bullet_scale = 0.5+ 0.5*(bullets[i].damage/6)
		
		bullet_fixture = physics_fixture_create();
		physics_fixture_set_circle_shape(bullet_fixture,bullet_scale*0.5*bullets[i].sprite_width)
		physics_fixture_set_density(bullet_fixture,0.03)
		physics_fixture_set_restitution(bullet_fixture,1)
		physics_fixture_set_linear_damping(bullet_fixture,0)
		physics_fixture_bind(bullet_fixture,bullets[i])
		physics_fixture_delete(bullet_fixture)
		
		bullets[i].phy_bullet = true

		bullets[i].phy_rotation = phy_rotation + random(2 * bullet_spread) - bullet_spread
		
		temp_bullet_speed = bullet_speed + random(2 * bullet_speed_randomness) - bullet_speed_randomness
		bullets[i].phy_speed_x = phy_speed_x + lengthdir_x(temp_bullet_speed,-bullets[i].phy_rotation)
		bullets[i].phy_speed_y = phy_speed_y + lengthdir_y(temp_bullet_speed,-bullets[i].phy_rotation)
		
		
		bullets[i].color = bullet_color
		bullets[i].damage = bullet_damage
		bullets[i].range = bullet_range

		bullet_timer = bullet_interval;
		}
	//image_index = 1;
	image_speed = (image_number+5)/bullet_interval;
	owner.energy -= energy_cost;
	owner.particles -= particle_cost;
	
	// Recoil
	//with(owner)
	//	physics_apply_impulse(other.phy_position_x,other.phy_position_y,lengthdir_x(other.recoil_force,-other.phy_rotation+180),lengthdir_y(other.recoil_force,-other.phy_rotation+180))
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(recoil_force,-phy_rotation+180),lengthdir_y(recoil_force,-phy_rotation+180))
	
	
	// Sound
	if sound[0] != noone{
		sound_number = irandom(array_length_1d(sound)-1)
		weapon_sound = audio_play_sound_on(module_audio_emitter,sound[sound_number],0,owner.sound_priority)
		}
	audio_sound_pitch(weapon_sound,bullet_interval_base/bullet_interval)
	}
 
ready_to_shoot = true // reset for next turn