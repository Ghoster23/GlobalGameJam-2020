///@description Update GamePiece grid position
///@param gamepiece
{
var _piece = argument0;

with(_piece) {
	var _g_nx = x div global.cell_size;
	var _g_ny = y div global.cell_size;
		
	if(_g_nx != grid_x || _g_ny != grid_y) {
		// Update Level Grid's Position at which this was
		var _cell = global.level_grid[# grid_x, grid_y] ;
		_cell[0] = noone;
		global.level_grid[# grid_x, grid_y] = _cell;
			
		// Update Level Grid's Position at which this now is
		_cell = global.level_grid[# _g_nx, _g_ny];
		_cell[0] = self.id;
		global.level_grid[# _g_nx, _g_ny] = _cell;
			
		grid_x = _g_nx;
		grid_y = _g_ny;
	}
}
}