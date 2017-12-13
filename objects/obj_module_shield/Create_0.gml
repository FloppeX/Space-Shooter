event_inherited();

activate_shield = false;
shield_active = false

shield = physics_fixture_create()
physics_fixture_set_circle_shape(shield, 60)
physics_fixture_set_awake(shield, true)
physics_mass_properties(0, phy_com_x, phy_com_y, 0)

