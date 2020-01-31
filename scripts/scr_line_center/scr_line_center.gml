///scr_line_center(x1,y1,x2,y2);   -> returns arra with center coords

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var res = -1;
res[0] = (x1 + x2)/2;
res[1] = (y1 + y2)/2;

return res;