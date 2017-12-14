event_inherited();

//

// Shield properties

physics_mass_properties(0, phy_com_x, phy_com_y, 0)

if global.gamepad_button_b 
	activate_shield = true
else 
	activate_shield = false

if activate_shield{
	sprite_index = spr_ship_shield;
	if shield_active == false{
		my_shield = physics_fixture_bind(shield, id)
		shield_active = true;
		}
	}
else {
	sprite_index = spr_module_shield
	if shield_active == true{
		physics_remove_fixture(id,my_shield)
		shield_active = false;
		}
	}