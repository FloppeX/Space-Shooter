event_inherited();

bullet_type_base = obj_bullet_player;
bullet_damage_base = 6;
bullet_range_base = 1640
bullet_speed_base = 17;
bullet_interval_base = 18;
bullet_spread_base = 2
energy_cost_base = 10

bullet_type = bullet_type_base
bullet_damage = bullet_damage_base
bullet_range = bullet_range_base
bullet_speed = bullet_speed_base
bullet_interval = bullet_interval_base
bullet_spread = bullet_spread_base
energy_cost = energy_cost_base

activation_button = 3
activated = false
barrel_length = 10
shoot = false
bullet_timer = bullet_interval;

bullet_depth = 10
bullet_color = c_lime

modifiers[0] = scr_modifier_script_do_nothing
//modifiers[0] = scr_modifier_test_script_1
//modifiers[1] = scr_modifier_test_script_2
//modifiers[2] = scr_modifier_test_script_3
//modifiers[3] = scr_modifier_test_script_4

/*
repeat(13){
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
}