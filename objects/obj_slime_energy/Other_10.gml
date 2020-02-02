/// @description Decide next action
#region Find Cell to move to

#region Find Connections
var _connectors = ds_list_create();

var _positions = [[0, -1], [-1, 0], [1, 0], [0, 1]]; // up left right down

for(var _i = 0; _i < 4; _i++) {
	var _pos = _positions[_i];
	
	var _adj_x = grid_x + _pos[0];
	var _adj_y = grid_y + _pos[1];
		
	if(_adj_x < 0 or global.level_columns <= _adj_x) continue;
	if(_adj_y < 0 or global.level_rows    <= _adj_y) continue;
		
	var _adj = global.level_grid[# _adj_x, _adj_y];
		
	var _piece = _adj[0];
	var _tile  = _adj[1];
	
	var _isComponent = _piece != noone and instance_exists(_piece) and 
						is_descended(_piece.object_index, obj_component_parent) and
						_piece.object_index != obj_battery;
		
	if((_piece == noone or _isComponent) and _tile != noone and _tile.object_index == obj_wire) {	
		ds_list_add(_connectors, _adj);
	}
}
#endregion

var _cell = -1;

#region Choose a connector from those found	
var _count = ds_list_size(_connectors); // Choose a connector
	
// If there's only that one
if(_count == 1) {
	_cell = _connectors[| 0];
}
	
// If there's more than one
else if(_count > 1) {
	var _choice = irandom(_count - 1);
		
	_cell = _connectors[| _choice];
	
	var _tile = _cell[1];
		
	// If chosen to go back
	if(prev_move_h == grid_x - _tile.grid_x and
	   prev_move_v == grid_y - _tile.grid_y) {
		ds_list_delete(_connectors, _choice);
			
		_choice = irandom(_count - 2); // Choose another
			
		_cell = _connectors[| _choice];
	}
}
	
ds_list_destroy(_connectors);
#endregion

if(_cell != -1) {
	var _piece = _cell[0];
	var _tile  = _cell[1];
	
	var _mh = _tile.grid_x - grid_x;
	var _mv = _tile.grid_y - grid_y;
	
	if(_piece == noone) {
		ds_list_add(actions, act_move_create(_mh, _mv));
		action_count++;
		
		_cell[0] = cell_reservation.energy;
		global.level_grid[# _tile.grid_x, _tile.grid_y] = _cell;
		
		prev_move_h = _mh;
		prev_move_v = _mv;
	}
	else {
		ds_list_add(actions, act_charge_create(_piece));
		action_count++;
	}
}
#endregion