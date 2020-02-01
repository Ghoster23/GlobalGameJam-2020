/// @description Decide next action
#region Find Cell to move to
var _arr = [-1, 0 , 1];

for(var _i = 0; _i < 3; _i++) {
	for(var _j = 0; _j < 3; _j++) {
		var _adj_x = grid_x + _arr[_j];
		var _adj_y = grid_y + _arr[_i];
		
		var _adj = global.level_grid[# _adj_x, _adj_y];
		
		var _piece = _adj[0];
		var _tile  = _adj[1];
		
		if(_piece == noone and _piece != cell_reservation.solder and
		   _piece != cell_reservation.energy and _tile != noone and 
		   instance_exists(_tile) and _tile == obj_wire) {
			
			var _mh = _tile.grid_x - grid_x;
			var _mv = _tile.grid_y - grid_y;
			
			if(prev_move_h * -1 != _mh || prev_move_v * -1 != _mv) {
				ds_list_add(actions, act_move_create(_mh, _mv));
				
				var _cell = global.level_grid[# grid_x + _mh, grid_y + _mv];
				_cell[0] = cell_reservation.energy;
				global.level_grid[# grid_x + _mh, grid_y + _mv] = _cell;
				
				break;
			}
		}
	}
}
#endregion