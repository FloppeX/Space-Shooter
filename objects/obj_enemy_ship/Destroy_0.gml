// destroy modules and module holders
for(var i = 0; i < array_height_2d(modules); i+=1;){
	if scr_exists(modules[i,0])
		with(modules[i,0])
			instance_destroy() 
	with(modules[i,1])
			instance_destroy()
	}