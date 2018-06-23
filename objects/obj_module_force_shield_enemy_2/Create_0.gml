event_inherited();

shield_object = obj_force_shield_enemy_2

my_shield = instance_create_depth(phy_position_x,phy_position_y,-10,shield_object);
my_shield.owner = id