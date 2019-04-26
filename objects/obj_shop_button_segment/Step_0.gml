cost = 0//instance_number(obj_ship_segment_player)

if activated and !button_used{
	if obj_player.credits >= cost{
		with(global.player)
			scr_add_ship_segment(id,24,obj_ship_segment_player)
		obj_player.credits -= cost
		button_used = true
		}
	activated = false
	}