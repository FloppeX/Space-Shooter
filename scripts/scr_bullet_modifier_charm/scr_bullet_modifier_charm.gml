target_object = obj_enemy_ship
damage = 0

color = c_fuchsia

if hit_enemy{
	victim = collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(20,-phy_rotation),phy_position_x+lengthdir_x(10,-phy_rotation),target_object,false,true)
	if victim != noone {
			electrification_effect = instance_create_layer(phy_position_x,phy_position_y,layer_get_id("instance_layer"),obj_effect_electrified)
			electrification_effect.target = victim
			electrification_effect.color = color
		}
	}