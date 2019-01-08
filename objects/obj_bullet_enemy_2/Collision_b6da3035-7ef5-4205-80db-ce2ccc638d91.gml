hit_enemy = true;
other.obj_health -= damage;

var i = irandom(2)
switch (i){
	case 0: bullet_impact_sound = snd_shield_deflect_1; break;
	case 1: bullet_impact_sound = snd_shield_deflect_2 ; break;
	case 2: bullet_impact_sound = snd_shield_deflect_3 ; break;
	}

audio_play_sound_at(bullet_impact_sound,phy_position_x,phy_position_y,0,100,1000,1,0,1)

with (other){
	temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
	var x_force = lengthdir_x(other.push_force,temp_dir)
	var y_force = lengthdir_y(other.push_force,temp_dir)
	physics_apply_impulse(other.phy_position_x,other.phy_position_y,x_force,y_force)
	}