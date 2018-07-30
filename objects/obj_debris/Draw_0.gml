alpha = min(destruction_timer/20,1)
scale = min(destruction_timer/destruction_timer_start,1)
draw_sprite_ext(sprite_index,-1,x,y,scale, scale,-phy_rotation,c_white,1);