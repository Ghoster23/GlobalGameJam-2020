/// @description Find next action(s)
var _icx = [0, -1, -2, -1, 0];

for(var i = 0; i < 5; i++) {
	for(var j = 0; j < i * 2 + 1; j++) {
		var _cx = grid_x + _icx[i] + j;
		var _cy = grid_y + -2 + i;
		
		if(_cx < 0 || global.level_columns <= _cx) continue;
		if(_cy < 0 || global.level_rows    <= _cy) continue;
		
		var _cell = global.level_grid[# _cx, _cy];
		
		var _piece = _cell[0];
		
		if(_piece != noone && instance_exists(_piece)) {
			if(_piece.class == gamepiece_class.food) {
				
			}
		}
	}
}