event_inherited();

time_counter += 1
turn_timer -= 1

damage = 0

var i = irandom(2)
switch (i){
	case 0: part_type_sprite(global.lightning_particle,spr_lightning_1,false,false,false); break;
	case 1: part_type_sprite(global.lightning_particle,spr_lightning_2,false,false,false); break;
	case 2: part_type_sprite(global.lightning_particle,spr_lightning_3,false,false,false); break;
	}
part_type_color2(global.lightning_particle,color,c_black);
part_type_alpha2(global.lightning_particle,1,0);
part_type_orientation(global.lightning_particle,0,360,0,0,0);
part_type_scale(global.lightning_particle,0.4*bullet_scale,0.6*bullet_scale)
part_particles_create(global.part_system_above,x,y,global.lightning_particle, 6);

if turn_timer <= 0{

	turn_timer = turn_timer_base
	target = scr_rocket_find_target_in_arc(target_type,-phy_rotation,targeting_arc,seek_range)
	if target != noone
		target_dir = point_direction(phy_position_x,phy_position_y,scr_wrap_closest_x(target),scr_wrap_closest_y(target))
	else target_dir = -phy_rotation
	target_dir += (random(spread)-0.5*spread);
	phy_speed_x = lengthdir_x(phy_speed,target_dir)
	phy_speed_y = lengthdir_y(phy_speed,target_dir)

	/*
	if random(99) < chance_new_branch and maximum_branches > 0{
		maximum_branches -= 1
		new_bolt = instance_copy(false)
		}
	*/
	}