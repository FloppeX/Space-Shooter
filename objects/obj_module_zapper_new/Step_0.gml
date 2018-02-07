event_inherited();

//

if image_index == 0
	boom_retracted = true;
	
if image_index == image_number -1 
	boom_extended = true;

if activated and !boom_extended{
	image_speed = 1;
	boom_retracted = false;
	}
	
if activated and boom_extended
	image_speed = 0;
	
if !activated and !boom_retracted{
	image_speed = -1;
	boom_extended = false;
	}
	
if !activated and boom_retracted
	image_speed = 0;	
 