event_inherited();
barrel_length = 10
//

bullet_timer -= 1;

sprite_index = spr_module_laser

if shoot
	sprite_index = spr_module_laser2

if shoot and bullet_timer <= 0{
	
		bullet_timer = bullet_interval;
		}
}
shoot = false


