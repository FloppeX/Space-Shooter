other.obj_health -= damage;

var i = irandom(2)
switch (i){
	case 0: bullet_impact_sound = snd_shield_deflect_1; break;
	case 1: bullet_impact_sound = snd_shield_deflect_2 ; break;
	case 2: bullet_impact_sound = snd_shield_deflect_3 ; break;
	}

audio_play_sound_at(bullet_impact_sound,phy_position_x,phy_position_y,0,100,1000,1,0,1)

temp_speed_x = phy_speed_x
temp_speed_y = phy_speed_y

instance_change(obj_bullet_player,false)

phy_speed_x = temp_speed_x
phy_speed_y = temp_speed_y