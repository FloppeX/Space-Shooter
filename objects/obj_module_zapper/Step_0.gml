
//

event_inherited();

// Assign an owner to the bullet

if instance_exists(bullets[0])
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		with(bullets[i])
			owner = other;

//

if image_index < 1
	boom_retracted = true;
else 
	boom_retracted = false;
	
if image_index > image_number -2
	boom_extended = true;
else
	boom_extended = false;

if activated and !boom_extended
	image_speed = 1;

if activated and boom_extended
	image_speed = 0;
	
if !activated and !boom_retracted
	image_speed = -1;
	
if !activated and boom_retracted
	image_speed = 0;	
 
if boom_extended
	ready_to_shoot = true
else ready_to_shoot = false
