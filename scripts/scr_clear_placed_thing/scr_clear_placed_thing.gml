var obj = argument0;

if(global.placed_things_list == noone){
	exit;
}

var i = ds_list_find_index(global.placed_things_list, obj);
if(i == -1){
	exit;
}
else{
	ds_list_delete(global.placed_things_list, i);
}



