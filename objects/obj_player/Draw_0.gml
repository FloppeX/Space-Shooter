
draw_sprite_ext(sprite_index,-1,phy_position_x+20,phy_position_y+20,0.5,0.5,-phy_rotation,c_black,0.2)
draw_self();

// Draw sprite at mirror_positions

draw_sprite_ext(sprite_index,-1,mirror_x,phy_position_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,phy_position_x,mirror_y,1,1,-phy_rotation,c_white,1)

// Draw modules



draw_sprite_ext(module_1.sprite_index,-1,module_1.x,module_1.y,1,1,module_1.obj_rotation,c_white,1)



draw_sprite_ext(module_2.sprite_index,-1,module_2.x,module_2.y,1,1,module_2.obj_rotation,c_white,1)


draw_sprite_ext(module_3.sprite_index,-1,module_3.x,module_3.y,1,1,module_3.obj_rotation,c_white,1)

