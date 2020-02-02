var obj = argument0;

if(global.placed_things_list == noone){
	
	global.placed_things_list = ds_list_create();
	
}

ds_list_add(global.placed_things_list, [obj.x, obj.y, obj.object_index]);

