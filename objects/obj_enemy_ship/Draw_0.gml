// Place modules
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		x = other.phy_position_x + lengthdir_x(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		y = other.phy_position_y + lengthdir_y(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		if module != noone
				module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
		}

// scr_draw_vision_cone();
draw_self();

//draw_text(x,y+50,object_get_name(target_object))
/*
if global.view_mode == 2{
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),75,true) 
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),150,true) 
	}
