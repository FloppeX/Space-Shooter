sprite_index = spr_cursor_yellow
if collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true)
	sprite_index = spr_cursor_orange

phy_position_x = mouse_x
phy_position_y = mouse_y



if mouse_check_button_pressed(mb_left){
	global.active_module.phy_position_x = 0
	global.active_module.phy_position_y = 0
	
	global.selected_module = collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true);
	if global.selected_module != noone {
		with(global.swap_module)
			instance_destroy();
		with(global.selected_module){
			global.swap_module = instance_copy(false);
			instance_destroy();
			}
		with(global.active_module){
			global.selected_module = instance_copy(false);
			instance_destroy();
			}
		with(global.swap_module)
			global.active_module = instance_copy(false);

		global.swap_module.phy_position_x = obj_player.phy_position_x + 120
		global.swap_module.phy_position_y = obj_player.phy_position_y + 30
		}
}
global.active_module.phy_position_x = phy_position_x
global.active_module.phy_position_y = phy_position_y


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