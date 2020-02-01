/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_red);
draw_text(x,y,   "zoom_lvl: " + string(zoom_level));
draw_text(x,y+30,"size:     " + string(cam_hg) + " - " + string(cam_wd));
draw_text(x,y+60,"x:     " + string(x) + " - y:" + string(y));
draw_set_color(c_white);


