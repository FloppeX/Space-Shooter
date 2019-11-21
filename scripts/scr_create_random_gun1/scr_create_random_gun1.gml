var temp_module = scr_create_random_module(global.array_player_weapons)

temp_module.offset_angle = irandom(3) * 90;

temp_module.placement_req_above = 1 // any placement allowed
temp_module.placement_req_right = 1
temp_module.placement_req_below = 1
temp_module.placement_req_left = 1

if temp_module.offset_angle == 0
	temp_module.placement_req_above = noone
if temp_module.offset_angle == 90
	temp_module.placement_req_left = noone
if temp_module.offset_angle == 180
	temp_module.placement_req_below = noone
if temp_module.offset_angle == 270
	temp_module.placement_req_right = noone

// Add modifiers

repeat(global.difficulty_level){
	var p = irandom(99)
	if p <= 59 and p >= 40
		with (temp_module){
			scr_add_random_modifier_common();
			cost += 1
			}
	if p <= 39 and p >= 25
		with (temp_module){
			scr_add_random_modifier_uncommon();
			cost += 2
			}
	if p <= 24 and p >= 10
		with (temp_module){
			scr_add_random_modifier_rare();
			cost += 4
			}
	if p <= 9 and p >= 0
		with (temp_module){
			scr_add_random_modifier_exotic();
			cost += 4
			}
				
// Chance for negative modifier
repeat(4-global.difficulty_level){
	var p = irandom(99)
	if p <= 29 and p >= 0
		with (temp_module){
			scr_add_random_modifier_negative();
			cost -= 2
			}
	}
		
	}	
	
return temp_module;
