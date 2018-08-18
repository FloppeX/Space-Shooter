// Set variables that may have been changed by modifiers

bullet_damage = round((bullet_damage_base + bullet_damage_bonus) * bullet_damage_multiplier)
bullet_range = round((bullet_range_base + bullet_range_bonus) * bullet_range_multiplier)
bullet_speed = (bullet_speed_base + bullet_speed_bonus) * bullet_speed_multiplier
bullet_speed_randomness = (bullet_speed_randomness_base + bullet_speed_randomness_bonus) * bullet_speed_randomness_multiplier
bullet_interval = round((bullet_interval_base + bullet_interval_bonus) * bullet_interval_multiplier)
recoil_force = (recoil_force_base + recoil_force_bonus) * recoil_force_multiplier
bullet_spread = round((bullet_spread_base + bullet_spread_bonus) * bullet_spread_multiplier)
bullet_number = round((bullet_number_base + bullet_number_bonus) * bullet_number_multiplier)
energy_cost = (energy_cost_base + energy_cost_bonus) * energy_cost_multiplier
particle_cost = round((particle_cost_base + particle_cost_bonus) * particle_cost_multiplier)

// Activate?

if owner.gamepad_button[activation_button] == true
	activated = true
else activated = false	

// orient to correct angle

angle_diff = angle_difference(-phy_rotation, target_angle)
if joint != noone
	physics_joint_set_value(joint,phy_joint_motor_speed,angle_diff)
target_angle = -owner.phy_rotation + offset_angle

//

audio_emitter_position(module_audio_emitter,phy_position_x,phy_position_y,0)


// Find mirror positions

scr_find_mirror_positions();

// Wrap movement

scr_wrap_room();
