// TEST

draw_text(50,100,map_scale)

// MAP

display_set_gui_size(1920, 1080);

map_width = 100 * map_scale;
map_height = 100 * map_scale;
map_edge_right = display_get_width() - 25 * map_scale
map_edge_left = map_edge_right - map_width
map_edge_top = 25 * map_scale
map_center_x = map_edge_left+ 0.5*map_width
map_center_y = map_edge_top+0.5*map_height
map_range = 0.5 * global.play_area_width;

draw_sprite_ext(spr_radar,-1, map_edge_left+ 0.5*map_width,map_edge_top+0.5*map_height,map_scale,map_scale,0,c_white,1)
player_x = phy_position_x-global.wrap_border_left
player_y = phy_position_y-global.wrap_border_top

scr_draw_object_type_on_map(obj_asteroid,spr_map_marker_asteroid);
scr_draw_object_type_on_map(obj_rocket,spr_map_marker_rocket);
scr_draw_object_type_on_map(obj_enemy_ship,spr_map_marker_enemy_ship);
draw_sprite_ext(spr_map_marker_player,-1, map_center_x,map_center_y,map_scale,map_scale,-phy_rotation,c_white,1)

// Health bar + energy_bar

health_bar_x = 30
health_bar_y = 540
health_bar_height = 300
health_bar_width = 20

draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y-0.5 * health_bar_height,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_maroon,c_maroon,3,true,true)


energy_bar_x = 70
energy_bar_y = 540
energy_bar_height = 300
energy_bar_width = 20

draw_healthbar(energy_bar_x-0.5 * health_bar_width,energy_bar_y-0.5 * health_bar_height,energy_bar_x+0.5 * health_bar_width,energy_bar_y+0.5 * energy_bar_height,100 * energy/max_energy,c_dkgray,c_lime,c_lime,3,true,true)