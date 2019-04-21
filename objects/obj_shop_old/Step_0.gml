// Ship stuff

with(obj_player)
	disabled_timer = 10

if enter_shop and !instance_exists(obj_wormhole_level_begin){
	exit_shop = false
	with(obj_player){
		
		disabled_timer = 10
		phy_rotation = -90
		
		y_diff = abs(phy_position_y- 0.5 * room_height)
		if y_diff > 250 and phy_speed_y >= -3
			phy_speed_y -= 0.1
		if y_diff <= 30 and phy_speed_y < 0
			phy_speed_y += 0.1
		if phy_speed_y > 0
			phy_speed_y = 0
			
		// Zoom in when docked
		//if y_diff <= 400 //and phy_speed_y == 0
		//	global.zoom = 600+y_diff
		}
	}
		
if exit_shop and instance_exists(obj_wormhole_level_end) {
	enter_shop = false
	with(obj_player){
		
		disabled_timer = 10
		//phy_rotation = -90
		
		y_diff = abs(phy_position_y- 0.5 * room_height)
			if y_diff < 250 and phy_speed_y >= -3 //and !instance_place(phy_position_x,phy_position_y,obj_wormhole_level_end)
				physics_apply_local_force(0,0,200,0)//phy_speed_y -= 0.1
		}	
	}


///

for(var i = 0; i < number_of_items; i+=1;)
	if scr_exists(shop_segments[i].module){
		shop_segments[i].module.persistent = false
		}
	

// How many items are left in the shop?
	// reset counter
number_of_items_left = 0
	// add up the items left that belong to the shop
for(var i = 0; i < number_of_items; i+=1;)
	if shop_segments[i].module != noone
		with(shop_segments[i].module)
			if owned_by_shop == true
				other.number_of_items_left += 1
	// if no more items are left to select, close the shop
if number_of_items_left <= (number_of_items - number_of_items_to_select)
	for(var i = 0; i < number_of_items; i+=1;)
		if shop_segments[i].module != noone{
			with(shop_segments[i].module)
				instance_destroy();
			shop_segments[i].module = noone
			}
			
// Wormhole

if exit_shop and !instance_exists(obj_wormhole){
	wormhole_end = instance_create_depth(0.5 * room_width,0.5 * room_height-300,100,obj_wormhole_level_end)
	wormhole_end.next_level = rm_space
	}
				