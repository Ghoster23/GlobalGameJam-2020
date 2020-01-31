/// @description scr_instance_create_layer_v(x,y,layer,object, ...args)
///@param x
///@param y
///@param layer
///@param object
///@param ....args


var n = argument_count - 4;
global.ct_argument = undefined;
global.ct_count = n;

for(var i = 0; i <n; i++){
	global.ct_argument[i] = argument[4+i];
}

var r = instance_create_layer(argument[0],argument[1],argument[2],argument[3]);
global.ct_argument = undefined;
global.ct_count = undefined;

return r;