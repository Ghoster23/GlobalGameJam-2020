///@description Find all GameTiles with given object_index
///@param object_index
{
var _obj_ind = argument0;

var _found = ds_list_create();

var i = 0;

while(not is_undefined(global.gametile_list[| i])) {
	var _tile = global.gametile_list[| i];
	
	if(_tile.object_index == _obj_ind || is_descended(_tile.object_index, _obj_ind)) {		
		ds_list_add(_found, _tile);
	}
	
	i += 1;
}

return _found;
}