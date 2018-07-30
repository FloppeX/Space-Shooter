radius = 70
damage = 10
force = 3//100
destruction_timer = 1

sprite_collision_mask(sprite_index, true, 1, 0, 0, sprite_width, sprite_height, 2, 0);
instance_create_depth(x,y,-10,obj_explosion_effect)

// Sound
var i = irandom(9)
switch (i){
	case 0: explosion_sound = snd_explosion_large_01; break;
	case 1: explosion_sound = snd_explosion_large_02; break;
	case 2: explosion_sound = snd_explosion_large_03; break;
	case 3: explosion_sound = snd_explosion_large_04; break;
	case 4: explosion_sound = snd_explosion_large_05; break;
	case 5: explosion_sound = snd_explosion_large_06; break;
	case 6: explosion_sound = snd_explosion_large_07; break;
	case 7: explosion_sound = snd_explosion_large_08; break;
	case 8: explosion_sound = snd_explosion_large_09; break;
	case 9: explosion_sound = snd_explosion_large_10; break;
	}
	
audio_play_sound_at(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)