for(var i = 0; i < bullet_number; i+=1;)
{
bullets[i] = instance_create_depth(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),bullet_depth,bullet_type);
bullets[i].phy_rotation = phy_rotation + random(2 * bullet_spread) - bullet_spread
bullets[i].phy_speed_x = phy_speed_x + lengthdir_x(bullet_speed,-bullets[i].phy_rotation)
bullets[i].phy_speed_y = phy_speed_y + lengthdir_y(bullet_speed,-bullets[i].phy_rotation)
bullets[i].color = bullet_color
bullets[i].damage = bullet_damage
bullets[i].range = bullet_range
bullet_timer = bullet_interval;
}