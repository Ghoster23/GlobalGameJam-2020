///@description Find Closest GameTile to position
///@param cell_x
///@param cell_y
///@param object_index
{
var _cx = argument0;
var _cy = argument1;

var _obj_ind = argument2;

var _min_dist = infinity;

var _found = noone;

var i = 0;

while(not is_undefined(global.gametile_list[| i])) {
	var _tile = global.gametile_list[| i];
	
	if(_tile.object_index == _obj_ind || is_descended(_tile.object_index, _obj_ind)) {
		var _dist = sqrt(sqr(_tile.grid_x - _cx) + sqr(_tile.grid_y - _cy));
		
		if(_dist < _min_dist) {
			_min_dist = _dist;
			_found = _tile;
		}
	}
	
	i += 1;
}

return [_found, _min_dist];
}