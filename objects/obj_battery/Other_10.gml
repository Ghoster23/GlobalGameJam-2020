/// @description Decide next action
if(energy > 0) {
	#region Find Cell to send excess to
	var _connectors = ds_list_create();
	
	#region Find Connections
	var _positions = [[0, -1], [-1, 0], [1, 0]]; // up left right

	for(var _i = 0; _i < 3; _i++) {
		var _pos = _positions[_i];
	
		var _adj_x = grid_x + _pos[0];
		var _adj_y = grid_y + _pos[1];
		
		if(_adj_x < 0 or global.level_columns <= _adj_x) continue;
		if(_adj_y < 0 or global.level_rows    <= _adj_y) continue;
		
		var _adj = global.level_grid[# _adj_x, _adj_y];
		
		var _piece = _adj[0];
		var _tile  = _adj[1];
		
		if(_piece == noone and _tile != noone and _tile.object_index == obj_wire) {	
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
		if(last_power_input[0] == grid_x - _tile.grid_x and
		   last_power_input[1] == grid_y - _tile.grid_y) {
			ds_list_delete(_connectors, _choice);
			
			_choice = irandom(_count - 2); // Choose another
			
			_cell = _connectors[| _choice];
		}
	}
	
	ds_list_destroy(_connectors);
	#endregion

	if(_cell != -1) {
		var _tile  = _cell[1];
		
		ds_list_add(actions, act_spawn_create(_tile.grid_x, _tile.grid_y, obj_slime_energy));
		action_count++;
		
		_cell[0] = cell_reservation.energy;
		global.level_grid[# _tile.grid_x, _tile.grid_y] = _cell;
		
		energy--;
	}
	#endregion
}