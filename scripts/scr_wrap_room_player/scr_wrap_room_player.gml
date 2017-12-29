// Wrap ship and backgrounds!
	
if phy_position_x > room_width - global.wrap_margin_player{
	phy_position_x -= global.play_area_width
	layer_x(layer_get_id("background_layer_1"), layer_get_x("background_layer_1") - global.play_area_width)
	layer_x(layer_get_id("background_layer_2"), layer_get_x("background_layer_2") - global.play_area_width)
	//layer_x(layer_get_id("background_layer_3"), layer_get_x("background_layer_3") - global.play_area_width)
	//layer_x(layer_get_id("background_layer_4"), obj_player.phy_position_x - global.play_area_width * 0)
	}
if phy_position_x < global.wrap_margin_player{
	phy_position_x += global.play_area_width
	layer_x(layer_get_id("background_layer_1"), layer_get_x("background_layer_1") + global.play_area_width)
	layer_x(layer_get_id("background_layer_2"), layer_get_x("background_layer_2") + global.play_area_width)
	//layer_x(layer_get_id("background_layer_3"), layer_get_x("background_layer_3") + global.play_area_width)
	//layer_x(layer_get_id("background_layer_4"), obj_player.phy_position_x + global.play_area_width)
	}

if phy_position_y > room_height - global.wrap_margin_player{
	phy_position_y -= global.play_area_height
	layer_y(layer_get_id("background_layer_1"), layer_get_y("background_layer_1") - global.play_area_height)
	layer_y(layer_get_id("background_layer_2"), layer_get_y("background_layer_2") - global.play_area_height)
	//layer_y(layer_get_id("background_layer_3"), layer_get_y("background_layer_3") - global.play_area_height)
	//layer_y(layer_get_id("background_layer_4"), obj_player.phy_position_y* 0)
	}

if phy_position_y < global.wrap_margin_player{
	phy_position_y += global.play_area_height
	layer_y(layer_get_id("background_layer_1"), layer_get_y("background_layer_1") + global.play_area_height)
	layer_y(layer_get_id("background_layer_2"), layer_get_y("background_layer_2") + global.play_area_height)
	//layer_y(layer_get_id("background_layer_3"), layer_get_y("background_layer_3") + global.play_area_height)
	//layer_y(layer_get_id("background_layer_4"), obj_player.phy_position_y* 0)
	}
	

