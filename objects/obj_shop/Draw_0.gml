draw_self();
for(var i = 0; i < number_of_items; i+=1;){
	draw_sprite(spr_module_holder,-1,module_holders[i].x,module_holders[i].y)
	}
/*
for(var i = 0; i < number_of_items; i+=1;)
	if module_holders[i].module != noone
		draw_text(x,y+20*i,module_holders[i].module.id)
	
//draw_text(x,y+40,number_of_items_to_select)
