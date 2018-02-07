//
hit_enemy = true;
other.obj_health -= damage;

var i = irandom(2)
switch (i){
	case 0: bullet_impact_sound = snd_bullet_vs_ship_1 ; break;
	case 1: bullet_impact_sound = snd_bullet_vs_ship_2 ; break;
	case 2: bullet_impact_sound = snd_bullet_vs_ship_3 ; break;
	}

audio_play_sound_at(bullet_impact_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)