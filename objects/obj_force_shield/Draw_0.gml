//draw_self();
if !owner.visible
	exit
	
numer_of_lines = 2

temp_scale = (timer mod 60) / 60
	draw_sprite_ext(spr_force_shield,-1,phy_position_x,phy_position_y,temp_scale*owner.draw_scale,temp_scale*owner.draw_scale,-phy_rotation,c_white,0.3)

for(var i = 2; i <= numer_of_lines; i+=1;){
	temp_scale = ((timer + (60/i)) mod 60) / 60
	draw_sprite_ext(spr_force_shield,-1,phy_position_x,phy_position_y,temp_scale*owner.draw_scale,temp_scale*owner.draw_scale,-phy_rotation,c_white,0.3)
	temp_scale = ((timer - (60/i)) mod 60) / 60
	draw_sprite_ext(spr_force_shield,-1,phy_position_x,phy_position_y,temp_scale*owner.draw_scale,temp_scale*owner.draw_scale,-phy_rotation,c_white,0.3)
}
