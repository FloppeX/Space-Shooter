// Description text

modifier_description = "Random bullet effects"

// Modifier script

bullet_color = make_color_hsv(random(255),255,255)

if bullets[0] != noone
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
			with(bullets[i]){
				var h = irandom(9)
					switch (h){
						case 0: scr_add_modifier(scr_bullet_modifier_seek) break;
						case 1: scr_add_modifier(scr_bullet_modifier_weird) break;
						case 2: scr_add_modifier(scr_bullet_modifier_destroy_enemy_bullets) break;
						case 3: scr_add_modifier(scr_bullet_modifier_electrify) break;
						case 4: scr_add_modifier(scr_bullet_modifier_charm) break;
						case 5: scr_add_modifier(scr_bullet_modifier_heavy_bullets) break;
						case 6: scr_add_modifier(scr_bullet_modifier_remote_control) break;
						case 7: scr_add_modifier(scr_bullet_modifier_beam_effect) break;
						case 8: scr_add_modifier(scr_bullet_modifier_exploding) break;
						case 9: scr_add_modifier(scr_bullet_modifier_gravity) break;
					}
			}
