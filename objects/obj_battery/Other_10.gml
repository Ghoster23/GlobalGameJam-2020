/// @description Decide next action
if(charge > 0) {
	var _connectors = [noone, noone, noone];
	
	#region Search fot Connectors
	var _pos_arr = [[0, -1], [-1, 0], [1, 0]];
	
	for(var _i = 0; _i < 3; _i++) {
		var _pos = _pos_arr[_i];
		
		var _cx = grid_x + _pos[0];
		var _cy = grid_y + _pos[1];
		
		if(0 <= _cx and _cx < global.level_columns and
		   0 <= _cy and _cy < global.level_rows) {
			var _cell = global.level_grid;
			
			var _piece = _cell[0];
			var _tile  = _cell[1];
			
			if(_piece == noone and 
			   _piece != cell_reservation.solder and
			   _piece != cell_reservation.blast  and
			   _piece != cell_reservation.energy and
			   _tile != noone and instance_exists(_tile) and 
			   _tile.object_index == obj_wire) {
				_connectors[_i] = _tile;
			}
		}
	}
	#endregion
	
	var _choice = irandom(2);
	
	var _connector = _connectors[_choice];
	
	if(_connector == noone) {
		_connector = _connectors[(_choice + 1) mod 3];
	}
	
	if(_connector == noone) {
		_connector = _connectors[(_choice + 2) mod 3];
	}
	
	if(_connector != noone) {
		ds_list_add(actions, act_spawn_create(_connector.grid_x, _connector.grid_y, obj_slime_energy));
		
		var _cell = global.level_grid[# _connector.grid_x, _connector.grid_y];
		_cell[0] = cell_reservation.energy;
		global.level_grid[# _connector.grid_x, _connector.grid_y] = _cell;
		
		charge--;
	}
}