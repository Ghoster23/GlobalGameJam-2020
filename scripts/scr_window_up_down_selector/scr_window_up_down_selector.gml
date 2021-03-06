///@param x1
///@param y1
///@param x2
///@param y2
///@param value
///@param min
///@param max
///@param xscale_optional
///@param yscale_optional
{
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var val = int64(argument[4]);

var _min = argument[5];
var _max = argument[6];

var xs = 1;
if(argument_count > 7){ xs = argument[7]; }

var ys = 1;
if(argument_count > 8){ ys = argument[8]; }

var wd = x2 - x1;
var hg = y2 - y1;

if(wd > hg){
	var type = 0;
}else {
	var type = 1;
}

switch type {
	case 0:
		if(scr_window_button(x1,y1,x1+wd/3,y2,"-")){
			val -= 1;
		}
		
		if(scr_window_button(x2-wd/3,y1,x2,y2,"+")){
			val += 1;
		}
	break;
	
	case 1:
		if(scr_window_button(x1,y2-hg/3,x2,y2,"-")){
			val -= 1;
		}
		
		if(scr_window_button(x1,y1,x2,y1+hg/3,"+")){
			val += 1;
		}
	break;
}

if(val < _min){
	val = _max;
}

if(val > _max){
	val = _min;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_ext_transformed((x1 + (x2-x1)/2) * xs, (y1 + (y2-y1)/2) * ys, string(val),
						  0, wd/3 * xs, xs, ys, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

return val;
}