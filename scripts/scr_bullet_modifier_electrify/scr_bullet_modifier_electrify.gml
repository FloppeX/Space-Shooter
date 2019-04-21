target_object = obj_enemy_ship_new
damage = 0

var i = irandom(2)
switch (i){
	case 0: part_type_sprite(global.lightning_particle,spr_lightning_small_1,false,false,false); break;
	case 1: part_type_sprite(global.lightning_particle,spr_lightning_small_2,false,false,false); break;
	case 2: part_type_sprite(global.lightning_particle,spr_lightning_small_3,false,false,false); break;
	}
part_type_color2(global.lightning_particle,color,c_black);
part_type_orientation(global.lightning_particle,0,360,0,0,0);
part_type_scale(global.lightning_particle,0.8*bullet_scale,1.2*bullet_scale)
part_particles_create(global.part_system_above,x,y,global.lightning_particle, 1);

if hit_enemy{
	victim = collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(20,-phy_rotation),phy_position_x+lengthdir_x(10,-phy_rotation),target_object,false,true)
	if victim != noone{
			electrification_effect = instance_create_layer(phy_position_x,phy_position_y,layer_get_id("instance_layer"),obj_effect_electrified)
			electrification_effect.target = victim
			electrification_effect.color = color
		}
	}