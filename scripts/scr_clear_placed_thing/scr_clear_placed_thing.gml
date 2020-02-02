var obj = argument0;

if(global.placed_things_list == noone){
	exit;
}

var i = scr_placed_things_find_index(obj.x, obj.y, obj.object_index);
if(i == -1){
	exit;
}
else{
	ds_list_delete(global.placed_things_list, i);
}



