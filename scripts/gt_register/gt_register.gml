///@description Registers a Game Tile
///@param gametile
{
var _tile = argument0;

with(_tile) {
	if(ds_exists(global.level_grid, ds_type_grid)) {
		grid_x = x div global.cell_size;
		grid_y = y div global.cell_size;
		
		ini_grid_x = grid_x;
		ini_grid_y = grid_y;
	
		var _cell = global.level_grid[# grid_x, grid_y];
	
		_cell[1] = _tile;
	
		global.level_grid[# grid_x, grid_y] = _cell;
	}
	
	if(ds_exists(global.gametile_list, ds_type_list)) {
		ds_list_add(global.gametile_list, id);
	}
}
}