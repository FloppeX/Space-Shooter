if done_warping
	exit

new_wormhole_traveller = instance_create_depth(other.phy_position_x,other.phy_position_y,-10,obj_wormhole_traveller_level_end)
new_wormhole_traveller.phy_rotation = other.phy_rotation
new_wormhole_traveller.sprite_index = other.sprite_index
for(var i = 0; i < array_height_2d(other.modules); i+=1;)
	if scr_exists(other.modules[i,0]){
		new_wormhole_traveller.modules[i,0] = other.modules[i,0].sprite_index
		new_wormhole_traveller.modules[i,2] = other.modules[i,2]
		new_wormhole_traveller.modules[i,3] = other.modules[i,3]
		new_wormhole_traveller.modules[i,4] = other.modules[i,0].offset_angle
		}
	else new_wormhole_traveller.modules[i,0] = noone

with(other)
	instance_destroy()