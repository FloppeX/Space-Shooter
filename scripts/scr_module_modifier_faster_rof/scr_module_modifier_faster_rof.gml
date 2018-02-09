// Description text

modifier_description = "Increased ROF multiplier"
if array_length_1d(description_lines) < array_length_1d(modifiers)
	description_lines[array_length_1d(description_lines)] = modifier_description
	
// Modifier script

bullet_interval_multiplier -= 0.3