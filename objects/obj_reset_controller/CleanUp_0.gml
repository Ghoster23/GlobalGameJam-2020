
if(global.placed_things_list != noone && ds_exists(global.placed_things_list, ds_type_list)){
	
	ds_list_destroy(global.placed_things_list);
	global.placed_things_list = noone;
}