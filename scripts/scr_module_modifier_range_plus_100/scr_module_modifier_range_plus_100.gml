// Description text

modifier_description = "Rate of fire +1"
if array_length_1d(description_lines) < array_length_1d(modifiers)
	description_lines[array_length_1d(description_lines)] = modifier_description
	
// Modifier script

bullet_interval_bonus -= 1