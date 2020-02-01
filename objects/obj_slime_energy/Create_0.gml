// Inherit the parent event
event_inherited();

battery = noone;

#region Find Battery
var _arr = [-1, 0 , 1];

for(var _i = 0; _i < 3; _i++) {
	for(var _j = 0; _j < 3; _j++) {
		var _adj_x = grid_x + _arr[_j];
		var _adj_y = grid_y + _arr[_i];
		
		var _adj = global.level_grid[# _adj_x, _adj_y];
		
		var _piece = _adj[0];
		
		if(_piece != noone and instance_exists(_piece) and 
			_piece.object_index == obj_battery) {
			battery = _piece;
			
			break;
		}
	}
}
#endregion

var _dx = grid_x - battery.grid_x;
var _dy = grid_x - battery.grid_y;

prev_move_h = sign(_dx);
prev_move_v = sign(_dy);