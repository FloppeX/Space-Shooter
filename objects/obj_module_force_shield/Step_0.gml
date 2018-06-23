event_inherited();

travel_speed = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)

my_shield.owner = id
my_shield.phy_position_x = phy_position_x
my_shield.phy_position_y = phy_position_y
my_shield.phy_rotation = phy_rotation

