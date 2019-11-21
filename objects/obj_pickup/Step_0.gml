
life_timer -= 1

if life_timer <= 0
	instance_destroy();
	
if life_timer <= 300{
	if scr_timer(8) 
		if visible == true
			visible = false
		else visible = true
	}
	
if life_timer <= 150{
	if scr_timer(4) 
		if visible == true
			visible = false
		else visible = true
	}
		
		
// Apply max speed

if phy_speed > max_speed
	phy_linear_damping = 4
else 
	phy_linear_damping = 1
	
//

scr_find_mirror_positions();

scr_wrap_room();
