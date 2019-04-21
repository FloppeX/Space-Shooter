if activated{
	if obj_player.credits >= cost{
		with(global.player)
			scr_add_ship_segment(id,24,obj_ship_segment_player)
		obj_player.credits -= cost
		}
	activated = false
	}