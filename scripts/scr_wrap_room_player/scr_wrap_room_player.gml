

// Wrap ship and particle system!
	
if phy_position_x > room_width - global.wrap_margin_player{
	phy_position_x = global.wrap_margin_player
	//global.part_system_x -= global.play_area_width
	//global.part_system_x -= global.play_area_width
	}
if phy_position_x < global.wrap_margin_player{
	phy_position_x = room_width - global.wrap_margin_player
	//global.part_system_x += global.play_area_width
	//global.part_system_x += global.play_area_width
	}

if phy_position_y > room_height - global.wrap_margin_player{
	phy_position_y = global.wrap_margin_player
	//global.part_system_y -= global.play_area_height
	//global.part_system_y -= global.play_area_height
	}

if phy_position_y < global.wrap_margin_player{
	phy_position_y = room_height - global.wrap_margin_player
	//global.part_system_y += global.play_area_height
	//global.part_system_y += global.play_area_height
	}
	
// Wrap particle systems!

