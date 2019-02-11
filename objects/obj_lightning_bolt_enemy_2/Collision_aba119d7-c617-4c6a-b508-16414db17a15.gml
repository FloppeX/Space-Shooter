electrification_effect = instance_create_layer(phy_position_x,phy_position_y,layer_get_id("instance_layer"),obj_effect_electrified)
electrification_effect.target = other
electrification_effect.color = color
//other.obj_health -= damage;
instance_destroy();