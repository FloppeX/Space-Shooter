	
if activated{
	if obj_player.credits >= cost{
		with(global.player)
			particles += 20
		obj_player.credits -= cost
		}
	activated = false
	}