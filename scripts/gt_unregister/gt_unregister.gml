///@description Unregisters a Game Tile
///@param gametile
{
var _tile = argument0;

with(_tile) {
	if(ds_exists(global.level_grid, ds_type_map)) {
		grid_x = x div global.cell_size;
		grid_y = y div global.cell_size;
	
		var _cell = global.level_grid[# grid_x, grid_y];
	
		_cell[1] = noone;
	
		global.level_grid[# grid_x, grid_y] = _cell;
	}
	
	if(ds_exists(global.gametile_list, ds_type_list)) {
		ds_list_delete(global.gametile_list, ds_list_find_index(global.gametile_list, id));
	}
}
}