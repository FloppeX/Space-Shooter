end_timer += 1

// Keep the player disabled for the ending

with(obj_player){ // Disable the ship...
	disabled_timer = 10
	}
	
//

// Move the ship when it is time..

if end_timer > 360
	with(obj_player){
		if phy_position_y > 2300{
			phy_rotation = -90
			if phy_speed < 4
				add_thrust = 0.5
			else add_thrust = 0
			}
		}
/*
if end_timer > 480
	with(view_object)
		if phy_position_y > 1800{
			if phy_speed_y > -4
				phy_speed_y -= 0.1
			}
		else {
			if phy_speed_y < 0 
				phy_speed_y += 0.1
			if phy_speed_y > 0
				phy_speed_y -= 0.1
			}
			
			*/

if end_timer > 1000 and !instance_exists(obj_death_menu){
		death_menu = instance_create_depth(0.5*display_get_width(),0.5*display_get_height(),0,obj_death_menu)
		death_menu.alignment = "center"
		death_menu.x_pos = 0.3*display_get_width()
		death_menu.y_pos = 0.5*display_get_height()

		}

	