event_inherited();

// Place player in the center of the room

if !instance_exists(obj_player)
	player = instance_create_depth(0.5 * room_width,0.5 * room_height,-5,obj_player)
player.controls_disabled = false
player.phy_rotation = -90
	