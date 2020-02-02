// Inherit the parent event
event_inherited();

origin = noone;

var _dx = 0;
var _dy = 0;

#region Find Battery
var _arr = [-1, 0 , 1];

for(var _i = 0; _i < 3; _i++) {
	for(var _j = 0; _j < 3; _j++) {
		if(_i == 1 and _j == 1) continue;
		
		var _adj_x = grid_x + _arr[_j];
		var _adj_y = grid_y + _arr[_i];
		
		if(_adj_x < 0 || global.level_columns <= _adj_x) continue;
		if(_adj_y < 0 || global.level_rows    <= _adj_y) continue;
		
		var _adj = global.level_grid[# _adj_x, _adj_y];
		
		var _piece = _adj[0];
		
		if(_piece != noone and instance_exists(_piece) and 
			is_descended(_piece.object_index, obj_component_parent)) {
			origin = _piece;
			
			break;
		}
	}
}
#endregion

if(origin != noone) {
	_dx = grid_x - origin.grid_x;
	_dy = grid_x - origin.grid_y;
}

prev_move_h = sign(_dx);
prev_move_v = sign(_dy);


draw_script = scr_electric_slime_draw;