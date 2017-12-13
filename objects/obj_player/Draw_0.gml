

draw_self();

// Draw sprite at mirror_positions

draw_sprite_ext(sprite_index,-1,mirror_x,phy_position_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,phy_position_x,mirror_y,1,1,-phy_rotation,c_white,1)

// Find module positions and then draw them

module_1.x = phy_position_x + lengthdir_x(36,-phy_rotation+45);
module_1.y = phy_position_y + lengthdir_y(36,-phy_rotation+45);
module_1.obj_rotation = -phy_rotation;

module_2.x = phy_position_x + lengthdir_x(36,-phy_rotation-45);
module_2.y = phy_position_y + lengthdir_y(36,-phy_rotation-45);
module_2.obj_rotation = -phy_rotation;

module_3.phy_position_x = phy_com_x
module_3.phy_position_y = phy_com_y
module_3.phy_rotation= phy_rotation;

ship_modules[1].x = phy_position_x + lengthdir_x(36,-phy_rotation+45);
ship_modules[1].y = phy_position_y + lengthdir_y(36,-phy_rotation+45);
ship_modules[2].x = phy_position_x + lengthdir_x(36,-phy_rotation);
ship_modules[2].y = phy_position_y + lengthdir_y(36,-phy_rotation);
ship_modules[3].x = phy_position_x + lengthdir_x(36,-phy_rotation-45);
ship_modules[3].y = phy_position_y + lengthdir_y(36,-phy_rotation-45);
ship_modules[4].x = phy_position_x + lengthdir_x(36,-phy_rotation+90);
ship_modules[4].y = phy_position_y + lengthdir_y(36,-phy_rotation+90);
ship_modules[5].x = phy_position_x
ship_modules[5].y = phy_position_y
ship_modules[6].x = phy_position_x + lengthdir_x(36,-phy_rotation-90);
ship_modules[6].y = phy_position_y + lengthdir_y(36,-phy_rotation-90);
ship_modules[7].x = phy_position_x + lengthdir_x(36,-phy_rotation+180);
ship_modules[7].y = phy_position_y + lengthdir_y(36,-phy_rotation+180);

draw_sprite_ext(module_1.sprite_index,-1,module_1.x,module_1.y,1,1,module_1.obj_rotation,c_white,1)
draw_sprite_ext(module_2.sprite_index,-1,module_2.x,module_2.y,1,1,module_2.obj_rotation,c_white,1)
draw_sprite_ext(module_3.sprite_index,-1,module_3.x,module_3.y,1,1,module_3.obj_rotation,c_white,1)

