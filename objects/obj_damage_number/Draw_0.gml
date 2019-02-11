var alpha = duration_timer / duration
var size = 0.3 * (2-duration_timer / duration)
draw_set_font(font_damage_number);
draw_set_color(color)
draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_text_color(x,y,damage,color,color,color,color,alpha);

draw_text_ext_transformed_color(x,y,round(damage*10)/10,20,200,size,size,0,color,color,color,color,alpha);
