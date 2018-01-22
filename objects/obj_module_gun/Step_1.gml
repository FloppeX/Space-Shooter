
/*
// Reset multipliers and bonuses
bullet_type = bullet_type_base

bullet_damage_multiplier = 1
bullet_range_multiplier = 1
bullet_speed_multiplier = 1
bullet_interval_multiplier = 1
bullet_interval_multiplier = 1
energy_cost_multiplier = 1

bullet_damage_bonus = 0
bullet_range_bonus = 0
bullet_speed_bonus = 0
bullet_interval_bonus = 0
bullet_interval_bonus = 0
energy_cost_bonus = 0

// Apply effects of modifiers

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if modifiers[i] != noone
		script_execute(modifiers[i])

// Set variables that may have been changed by modifiers


bullet_damage = (bullet_damage_base * bullet_damage_multiplier) + bullet_damage_bonus
bullet_range = (bullet_range_base * bullet_range_multiplier) + bullet_range_bonus
bullet_speed = (bullet_speed_base * bullet_speed_multiplier) + bullet_speed_bonus
bullet_interval = (bullet_interval_base * bullet_interval_multiplier) + bullet_interval_bonus
bullet_spread = (bullet_spread_base * bullet_interval_multiplier) + bullet_interval_bonus
energy_cost = (energy_cost_base * energy_cost_multiplier) + energy_cost_bonus