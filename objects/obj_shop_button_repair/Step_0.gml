if activated{
	if obj_player.credits >= cost{
		with(global.player)
			obj_health += 10
		obj_player.credits -= cost
		}
	activated = false
	}