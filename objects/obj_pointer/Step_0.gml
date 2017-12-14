sprite_index = spr_cursor_yellow
if collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true)
	sprite_index = spr_cursor_orange

phy_position_x = mouse_x
phy_position_y = mouse_y

active_module.phy_position_x = phy_position_x
active_module.phy_position_y = phy_position_y

if mouse_check_button_pressed(mb_left){
	selected_module = collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true);
	if selected_module != noone{
		swap_module_1 = selected_module
		swap_module_2 = active_module
		selected_module = swap_module_2
		active_module = swap_module_1
		}
}

swap_module_1.phy_position_x = 0
swap_module_1.phy_position_y = 0
swap_module_2.phy_position_x = 0
swap_module_2.phy_position_y = 0

	/*	
	with(obj_player){
		for(var i = 0; i < 7; i+=1;){
			with(ship_modules[i]){
				var temp_module = collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true);
				if temp_module != noone
					instance_change(temp_module,false)
				}
			}
		}
	}