if event_number != ev_step_end
	exit

if shoot == true{
	switch (irandom(6)){
		case 0: with(bullet) instance_change(obj_lightning_bolt,true); break;
		//case 1: with(bullet) instance_change(obj_enemy_ship,true); break;
		}
	}
