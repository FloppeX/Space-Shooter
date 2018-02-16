// Description text

modifier_description = "Random color"
/*
if array_length_1d(description_lines) < array_length_1d(modifiers)
	description_lines[array_length_1d(description_lines)] = modifier_description
*/
// Modifier script

bullet_color = make_color_hsv(random(255),255,255)