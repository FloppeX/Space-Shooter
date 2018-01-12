bullet = instance_create_depth(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),bullet_depth,bullet_type);
bullet.phy_rotation = phy_rotation + random(2 * bullet_spread) - bullet_spread
bullet.phy_speed_x = phy_speed_x + lengthdir_x(bullet_speed,-bullet.phy_rotation)
bullet.phy_speed_y = phy_speed_y + lengthdir_y(bullet_speed,-bullet.phy_rotation)
bullet.color = bullet_color
bullet.damage = bullet_damage
bullet.range = bullet_range
bullet_timer = bullet_interval;
