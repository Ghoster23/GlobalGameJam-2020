/// @description Insert description here
// You can write your code in this editor

draw_self();

if(image_index == 0){
	exit;
}

draw_set_font(fnt_karma);
draw_set_color(c_gray);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xx = x + 20;
var yy = y - 30;

draw_text_ext(xx + 1, yy, string(units_left), 0, 200);
draw_text_ext(xx - 1, yy, string(units_left), 0, 200);
draw_text_ext(xx, yy + 1, string(units_left), 0, 200);
draw_text_ext(xx, yy - 1, string(units_left), 0, 200);

draw_set_color(c_white);
draw_text_ext(xx, yy, string(units_left), 0, 200);