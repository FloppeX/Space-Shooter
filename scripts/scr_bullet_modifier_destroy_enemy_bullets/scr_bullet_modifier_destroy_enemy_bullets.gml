sprite_index = spr_bullet_shielded

target_object = obj_bullet_enemy

other_bullet = instance_place(phy_position_x,phy_position_y,target_object)
if other_bullet != noone{
	with (other_bullet)
		instance_destroy();
	//instance_destroy();
	}