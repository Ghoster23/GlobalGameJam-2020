/// @description Decide next action
#region Find Cell to move to

#region Find Connections
var _cell  = -1;

var _positions = [[1, 0], [0, -1], [-1, 0], [0, 1]]; // right up left down

var _start = (orientation + 3) mod 4;

for(var _i = 0; _i < 4; _i++) {
	var _ori = (_start + _i) mod 4;
	var _pos = _positions[_ori];
	
	var _adj_x = grid_x + _pos[0];
	var _adj_y = grid_y + _pos[1];
		
	if(_adj_x < 0 or global.level_columns <= _adj_x) continue;
	if(_adj_y < 0 or global.level_rows    <= _adj_y) continue;
		
	var _adj = global.level_grid[# _adj_x, _adj_y];
		
	var _piece = _adj[0];
	var _tile  = _adj[1];
	
	var _isComponent = _piece != noone and instance_exists(_piece) and 
						is_descended(_piece.object_index, obj_component_parent) and
						not is_descended(_piece.object_index, obj_battery_parent);
						
	var _isBSlime = _piece != noone and instance_exists(_piece) and 
						_piece.object_index == obj_slime_blast;
		
	if((_piece == noone or _piece == cell_reservation.blast or _isBSlime or _isComponent) and 
	   _tile != noone and _tile.object_index == obj_wire) {	
		_cell = _adj;
		orientation = _ori;
		break;
	}
}
#endregion

if(_cell != -1) {
	var _piece = _cell[0];
	var _tile  = _cell[1];
	
	var _mh = _tile.grid_x - grid_x;
	var _mv = _tile.grid_y - grid_y;
	
	// If there's no GamePiece at the cell
	if(_piece == noone) {
		ds_list_add(actions, act_move_create(_mh, _mv));
		action_count++;
		
		_cell[0] = cell_reservation.energy;
		global.level_grid[# _tile.grid_x, _tile.grid_y] = _cell;
	}
	// If there's a Blast Slime going to the cell
	else if(_piece == cell_reservation.blast || _piece.object_index == obj_slime_blast) {
		ds_list_add(actions, act_blast_create(_tile.grid_x, _tile.grid_y));
		action_count++;
	}
	// If there's a Component at the cell
	else {
		ds_list_add(actions, act_charge_create(_piece));
		action_count++;
	}
}
#endregion