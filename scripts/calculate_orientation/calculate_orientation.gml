///@param horizontal
///@param vertical
{
var _h = argument0;
var _v = argument1;

if(_h != 0 xor _v != 0) {
	if(_h == 0) {
		if(_v == -1) return 1;
		if(_v ==  1) return 3;
	}
	else {
		if(_h == -1) return 2;
		if(_h ==  1) return 0;
	}
}
else {
	//TODO
}
}