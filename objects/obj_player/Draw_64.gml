// TEST
if global.view_mode == 2{
	draw_set_font(global.font_menu)
	draw_set_color(c_white)
	draw_text(50,90,"zoom: " + string(global.zoom))
	draw_text(50,120,"difficulty: " + string(global.difficulty_level))
	draw_text(50,150,"max speed: " + string(max_speed))
	draw_text(50,180,"rotation_speed: " + string(rotation_speed))
	draw_text(50,210,"max_health: " + string(max_health))
	draw_text(50,240,"max_energy: " + string(max_energy))
	draw_text(50,270,"energy_increase: " + string(energy_increase))
	draw_text(50,300,"enemies killed: " + string(enemies_killed))
	draw_text(50,330,"bullets fired: " + string(bullets_fired))
	draw_text(50,360,"credits gained: " + string(credits_gained))
}


// MAP


map_width = 100 * map_scale;
map_height = 100 * map_scale;
map_edge_right = /*display_get_width()*/ display_get_gui_width() - 25 * map_scale
map_edge_left = map_edge_right - map_width
map_edge_top = 25 * map_scale
map_center_x = map_edge_left+ 0.5*map_width
map_center_y = map_edge_top+0.5*map_height
map_range = 0.5 * global.play_area_width;

draw_sprite_ext(spr_radar,-1, map_edge_left+ 0.5*map_width,map_edge_top+0.5*map_height,map_scale,map_scale,0,c_white,1)
player_x = phy_position_x-global.wrap_border_left
player_y = phy_position_y-global.wrap_border_top

scr_draw_object_type_on_map(obj_asteroid,spr_map_marker_asteroid,c_white);
scr_draw_object_type_on_map(obj_rocket,spr_map_marker_rocket,c_white);
scr_draw_object_type_on_map(obj_enemy_ship_new,spr_map_marker_enemy_ship,c_white);
wormhole = instance_find(obj_wormhole_level_end_new,0)
if wormhole != noone
	scr_draw_object_type_on_map(obj_wormhole_level_end_new,spr_map_wormhole,wormhole.color);
draw_sprite_ext(spr_map_marker_player,-1, map_center_x,map_center_y,map_scale,map_scale,-phy_rotation,c_white,1)

// Health bar + energy_bar + particle bar

health_bar_x = 30
health_bar_y = 540
health_bar_height = 300
health_bar_width = 20

draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height - health_bar_height * max_health/max_health_base ,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_maroon,c_maroon,3,true,true)


energy_bar_x = 70
energy_bar_y = 540
energy_bar_height = 300
energy_bar_width = 20

draw_healthbar(energy_bar_x-0.5 * health_bar_width,energy_bar_y+0.5 * energy_bar_height - energy_bar_height * max_energy/max_energy_base,energy_bar_x+0.5 * health_bar_width,energy_bar_y+0.5 * health_bar_height,100 * energy/max_energy,c_dkgray,c_lime,c_lime,3,true,true)

particles_bar_x = 110
particles_bar_y = 540
particles_bar_height = 300
particles_bar_width = 20

draw_healthbar(particles_bar_x-0.5 * health_bar_width,particles_bar_y+0.5 * particles_bar_height - particles_bar_height * max_particles/max_particles_base,particles_bar_x+0.5 * health_bar_width,particles_bar_y+0.5 * particles_bar_height,100 * particles/max_particles,c_dkgray,c_aqua,c_aqua,3,true,true)

// Credits

draw_sprite_ext(spr_pickup_credit,-1,health_bar_x,health_bar_y + 0.5 * health_bar_height + 60,2,2,0,c_white,1)
draw_set_font(font_damage_number)
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_text(health_bar_x+60,health_bar_y + 0.5 * health_bar_height + 60,credits)

// Active item

if selected_active_module != noone and scr_exists(modules[selected_active_module,0]){
	draw_sprite_ext(spr_module_holder,-1,energy_bar_x,health_bar_y + 0.5 * health_bar_height + 180,5,5,0,c_white,1)
	draw_sprite_ext(modules[selected_active_module,0].sprite_index,-1,energy_bar_x,health_bar_y + 0.5 * health_bar_height + 180,5,5,modules[selected_active_module,0].offset_angle+90,c_white,1)
	}
	

// Crew
draw_set_font(global.font_big_text)
draw_set_color(c_white)
draw_set_halign(fa_left)
for(var i = 0; i < array_height_2d(modifiers); i+=1;)
			if modifiers[i,0] != noone{
				draw_sprite_ext(modifiers[i,4],-1,health_bar_x + 22,health_bar_y + 0.5 * health_bar_height + 255+120*i,4,4,0,c_white,1)
				draw_text_ext_transformed(health_bar_x + 80,health_bar_y + 0.5 * health_bar_height + 230+120*i,modifiers[i,2],0,800,1,1,0)
				}