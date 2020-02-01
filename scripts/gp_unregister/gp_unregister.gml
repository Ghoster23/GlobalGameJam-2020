///@description Unregisters a Game Piece
///@param gamepiece
{
var _piece = argument0;

with(_piece) {
	if(ds_exists(global.level_grid, ds_type_grid)) {
		grid_x = x div global.cell_size;
		grid_y = y div global.cell_size;
	
		var _cell = global.level_grid[# grid_x, grid_y];
	
		_cell[0] = noone;
	
		global.level_grid[# grid_x, grid_y] = _cell;
	}
	
	if(ds_exists(global.gamepiece_list, ds_type_list)) {
		ds_list_delete(global.gamepiece_list, ds_list_find_index(global.gamepiece_list, id));
	}
}
}