	
if activated{
	if obj_player.credits >= cost{
		with(global.player)
			particles += 10
		obj_player.credits -= cost
		}
	activated = false
	}