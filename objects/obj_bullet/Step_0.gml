// Bullet stuff
timer -= phy_speed;

phy_bullet = true;

if timer <= 0{
	with (self) instance_destroy();
	exit;
	}
	
phy_rotation = -point_direction(0, 0, phy_speed_x, phy_speed_y)

// Particle effect
/*
part_particles_create_color(global.part_system_below, phy_position_x,phy_position_y,global.blaster_particle,color, 3);
*/
// Hit an enemy

if hit_enemy == true{

	part_particles_create_color(global.part_system_above, phy_position_x+lengthdir_x(+10,-phy_rotation), phy_position_y+ lengthdir_y(+10,-phy_rotation), global.part_weapon_splat,color, 3);
	damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = color;
	instance_destroy();
	exit;
	}

// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();