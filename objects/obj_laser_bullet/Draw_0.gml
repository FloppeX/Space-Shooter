event_inherited();

if instance_exists(owner)
scr_draw_curve_sprite(owner.phy_position_x,owner.phy_position_y,phy_position_x,phy_position_y,-phy_rotation,32,spr_bullet,color)
