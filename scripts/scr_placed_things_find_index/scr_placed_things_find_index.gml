var xx     = argument0;
var yy     = argument1;
var obj_id = argument2;

for(var i = 0; i < ds_list_size(global.placed_things_list); i++){
	
	var a = global.placed_things_list[|i];
	if( a[0] == xx and a[1] == yy and a[2] == obj_id){
		return i;
	}
}

return -1;