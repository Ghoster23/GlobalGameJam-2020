// Destroy level ds_grid
if(ds_exists(global.level_grid, ds_type_grid)) {
	ds_grid_destroy(global.level_grid);
}

// Destroy gamepiece list
if(ds_exists(global.gamepiece_list, ds_type_list)) {
	ds_list_destroy(global.gamepiece_list);
}

// Destroy level nfo
if(ds_exists(global.level_info, ds_type_list)) {
	ds_list_destroy(global.level_info);
}