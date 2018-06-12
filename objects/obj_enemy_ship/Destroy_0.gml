// destroy modules and module holders
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		if module != noone
			with(module)
				instance_destroy()
		instance_destroy()
		}