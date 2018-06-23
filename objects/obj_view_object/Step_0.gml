scr_find_mirror_positions();
scr_wrap_room_player();

// Set wrap boundaries for other objects

global.wrap_border_left = phy_position_x - 0.5 * global.play_area_width;
global.wrap_border_right = phy_position_x + 0.5 * global.play_area_width;
global.wrap_border_top = phy_position_y - 0.5 * global.play_area_height;
global.wrap_border_bottom = phy_position_y + 0.5 * global.play_area_height;
