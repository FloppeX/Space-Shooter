if done_warping
	exit

new_wormhole_traveller = instance_create_depth(other.phy_position_x,other.phy_position_y,-10,obj_wormhole_traveller_level_end)
new_wormhole_traveller.sprite_index = other.sprite_index
new_wormhole_traveller.color = other.color
new_wormhole_traveller.phy_speed_x = other.phy_speed_x
new_wormhole_traveller.phy_speed_y = other.phy_speed_y
draw_scale = other.draw_scale

with(other)
	instance_destroy()