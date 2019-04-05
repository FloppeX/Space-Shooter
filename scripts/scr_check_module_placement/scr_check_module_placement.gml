// Takes a module and a module holder. Returns true if module placement allowed.

var temp_module = argument0
var temp_segment = argument1

if temp_module == noone
	return true
	
if temp_module.placement_req_above == noone
	if temp_segment.ship_segment_above != noone
		return false
		
if temp_module.placement_req_right == noone
	if temp_segment.ship_segment_right != noone
		return false
		
if temp_module.placement_req_below == noone
	if temp_segment.ship_segment_below != noone
		return false
		
if temp_module.placement_req_left == noone
	if temp_segment.ship_segment_left != noone
		return false
		
return true