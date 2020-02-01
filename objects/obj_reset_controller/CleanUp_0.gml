
if(global.placed_things_grid != noone && ds_exists(global.placed_things_grid, ds_type_grid)){
	ds_grid_destroy(global.placed_things_grid);
	global.placed_things_grid = noone;
}