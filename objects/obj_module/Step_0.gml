// Set variables that may have been changed by modifiers

//scr_calculate_module_variables();
bullet_damage = round((bullet_damage_base * bullet_damage_multiplier) + bullet_damage_bonus)
bullet_range = round((bullet_range_base * bullet_range_multiplier) + bullet_range_bonus)
bullet_speed = (bullet_speed_base * bullet_speed_multiplier) + bullet_speed_bonus
bullet_speed_randomness = (bullet_speed_randomness_base * bullet_speed_randomness_multiplier) + bullet_speed_randomness_bonus
bullet_interval = round((bullet_interval_base * bullet_interval_multiplier) + bullet_interval_bonus)
bullet_spread = round((bullet_spread_base * bullet_spread_multiplier) + bullet_spread_bonus)
bullet_number = round((bullet_number_base * bullet_number_multiplier) + bullet_number_bonus)
energy_cost = round((energy_cost_base * energy_cost_multiplier) + energy_cost_bonus)
particle_cost = round((particle_cost_base * particle_cost_multiplier) + particle_cost_bonus)

//

phy_rotation = owner.phy_rotation + offset_angle + rotation_add

audio_emitter_position(module_audio_emitter,phy_position_x,phy_position_y,0)
