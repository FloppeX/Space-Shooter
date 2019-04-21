if done_warping
	exit

new_wormhole_traveller = instance_create_depth(other.phy_position_x,other.phy_position_y,-10,obj_wormhole_traveller_level_end)
new_wormhole_traveller.phy_rotation = other.phy_rotation
new_wormhole_traveller.sprite_index = other.sprite_index
for(var i = 0; i < array_length_1d(other.ship_segment); i+=1;)
	if scr_exists(other.ship_segment[i]){
		new_wormhole_traveller.modules[i,0] = other.ship_segment[i].sprite_index
		if scr_exists(other.ship_segment[i].module)
			new_wormhole_traveller.modules[i,0] = other.ship_segment[i].module.sprite_index
		new_wormhole_traveller.modules[i,2] = other.ship_segment[i].placement_angle
		new_wormhole_traveller.modules[i,3] = other.ship_segment[i].placement_distance
		if scr_exists(other.ship_segment[i].module)
			new_wormhole_traveller.modules[i,4] = other.ship_segment[i].module.offset_angle
		else new_wormhole_traveller.modules[i,4] = 0
		if other.ship_segment[i].ship_segment_right != noone
			new_wormhole_traveller.modules[i,5] = 1
		else new_wormhole_traveller.modules[i,5] = 0
		if other.ship_segment[i].ship_segment_below != noone
			new_wormhole_traveller.modules[i,6] = 1
		else new_wormhole_traveller.modules[i,6] = 0
		}
else new_wormhole_traveller.modules[i,0] = noone


for(var i = 0; i < array_length_1d(other.ship_segment); i+=1;){
	if scr_exists(other.ship_segment[i].module)
		with(other.ship_segment[i].module)
			instance_destroy()
		with(other.ship_segment[i])
			instance_destroy()
		}
with(other)
	instance_destroy()