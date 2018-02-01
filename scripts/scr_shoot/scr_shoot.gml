for(var i = 0; i < bullet_number; i+=1;)
{
bullets[i] = instance_create_depth(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),bullet_depth,bullet_type);
bullets[i].phy_rotation = phy_rotation + random(2 * bullet_spread) - bullet_spread
bullets[i].phy_speed_x = phy_speed_x + lengthdir_x(bullet_speed,-bullets[i].phy_rotation)
bullets[i].phy_speed_y = phy_speed_y + lengthdir_y(bullet_speed,-bullets[i].phy_rotation)
bullets[i].color = bullet_color
bullets[i].damage = bullet_damage
//with(bullets[i])
//	physics_mass_properties( 0.1 * damage, phy_com_x, phy_com_y, phy_inertia);
bullets[i].range = bullet_range
bullet_scale = 0.5+ 0.5*(bullets[i].damage/6)
bullet_fixture = physics_fixture_create();
physics_fixture_set_circle_shape(bullet_fixture,bullet_scale*0.5*bullets[i].sprite_width)
physics_fixture_set_density(bullet_fixture,0.05)
physics_fixture_bind(bullet_fixture,bullets[i])
physics_fixture_delete(bullet_fixture)
bullet_timer = bullet_interval;
}