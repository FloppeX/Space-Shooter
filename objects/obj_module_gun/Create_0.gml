event_inherited();

bullet_damage = 6;
bullet_range = 640
bullet_speed = 7;
bullet_interval = 18;
bullet_spread = 2	// Max misalignment of bullet when leaving barrel. 0 = most accurate

activation_button = 3
activated = false
barrel_length = 10
shoot = false
bullet_timer = bullet_interval;
bullet_type = obj_bullet_player;
bullet_depth = 10
bullet_color = c_lime


var h = irandom(5)
	switch (h){
		case 0: test_script = scr_modifier_bullet_color_random; break;
		case 1: test_script = script_execute(scr_modifier_change_damage, irandom(10)-5); break;
		case 2: test_script = script_execute(scr_modifier_change_bullet_interval, irandom(10)-5); break;
		case 3: test_script = script_execute(scr_modifier_change_bullet_speed,irandom(10)-5); break;
		case 4: test_script = script_execute(scr_modifier_change_bullet_spread, irandom(40)-20); break;
		case 5: test_script = script_execute(scr_modifier_change_range, irandom(200)-100); break;
		}

script_execute(test_script)