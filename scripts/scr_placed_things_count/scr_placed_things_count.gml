var obj_id = argument0;
var count = 0;

if(global.placed_things_list == noone){
	
	global.placed_things_list = ds_list_create();
	
}

for(var i = 0; i < ds_list_size(global.placed_things_list); i++){
	
	var a = global.placed_things_list[|i];
	
	if( a[2] == obj_id){
		count ++;
	}
}

return count;