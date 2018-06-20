// Place modules
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		x = other.phy_position_x + lengthdir_x(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		y = other.phy_position_y + lengthdir_y(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		if module != noone
				module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
		}

draw_self();

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height){
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
		for(var i = 0; i < array_length_1d(module_holders); i+=1;){
			with(module_holders[i]){
				draw_sprite_ext(sprite_index,image_index,x+p,y+q,other.draw_scale,other.draw_scale,rotation,c_white,other.alpha)	
				if module != noone{
					draw_sprite_ext(module.sprite_index,module.image_index,x+p,y+q,other.draw_scale,other.draw_scale,-module.phy_rotation,c_white,other.alpha)
					}
				}
			}
	}
	
//  health bar

if obj_health < old_obj_health
	health_bar_timer = 120
	
if health_bar_timer > 0{
	health_bar_x = phy_position_x
	health_bar_y = phy_position_y - 80
	health_bar_height = 8
	health_bar_width = 36
	
	draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y-0.5 * health_bar_height,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_red,c_red,0,true,true)
	health_bar_timer -= 1
}
old_obj_health = obj_health
