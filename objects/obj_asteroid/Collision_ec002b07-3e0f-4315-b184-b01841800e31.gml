with (other){
	var i = irandom(2)
	switch(i){
		case 0: crash_sound = snd_asteroid_smash_1; break;
		case 1: crash_sound = snd_asteroid_smash_2; break;
		case 2: crash_sound = snd_asteroid_smash_3; break;
		}
	audio_play_sound_on(ship_audio_emitter,crash_sound,0,1)
	obj_health -= other.damage
	disabled_timer += 30
	temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
	var x_force = lengthdir_x(other.push_force,temp_dir)
	var y_force = lengthdir_y(other.push_force,temp_dir)
	physics_apply_impulse(phy_position_x,phy_position_y,x_force,y_force)
	}