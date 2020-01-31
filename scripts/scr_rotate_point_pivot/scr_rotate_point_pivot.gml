///scr_rotate_point_pivot(cx,cy,offx,offy,angle)

var cx    = argument0;
var cy    = argument1;
var offx  = argument2;
var offy  = argument3;
var angle = argument4;

var _cos = cos(degtorad(angle));
var _sin = sin(degtorad(angle));

var xx = cx + _cos * (offx) - _sin * (offy);
var yy = cy + _sin * (offx) + _cos * (offy);

return [xx,yy]

