var free_segments = 0
for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if ship_segment[i].module == noone
		free_segments += 1
		
return free_segments