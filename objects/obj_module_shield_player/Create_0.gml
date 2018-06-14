event_inherited();

shield_object = obj_shield_player

my_shield = instance_create_depth(phy_position_x,phy_position_y,-10,shield_object);
my_shield.obj_health = shield_health
my_shield.owner = id