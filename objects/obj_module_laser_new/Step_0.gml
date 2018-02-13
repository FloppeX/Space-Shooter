
if instance_exists(bullets[0])
	for(var i = 0; i < array_length_1d(bullets); i+=1;)
		old_bullets[i] = bullets[i]
/*
for(var i = 0; i < array_length_1d(old_bullets); i+=1;)
			with(old_bullets[i])
				owner = other.id
*/
event_inherited();

if shoot
	if instance_exists(old_bullets[0])
		for(var i = 0; i < array_length_1d(old_bullets); i+=1;)
			with(old_bullets[i])
				owner = other.bullets[i];