if activated{
	if obj_player.credits >= cost{
		with(global.player)
			obj_health += 20
		obj_player.credits -= cost
		}
	activated = false
	}