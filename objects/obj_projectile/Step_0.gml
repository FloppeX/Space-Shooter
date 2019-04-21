timer += 1

// projectile stuff
range -= phy_speed;
phy_bullet = true;

// Apply effects of modifiers

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if modifiers[i,0] != noone
		script_execute(modifiers[i,0])
		

// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();
