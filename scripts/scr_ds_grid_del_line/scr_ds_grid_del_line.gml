{
var grid = argument0;
var line = argument1;

var g_wd = ds_grid_width(grid);
var g_hg = ds_grid_height(grid);

if(line >= g_hg){
	return grid;
}

var ngrid = ds_grid_create(g_wd,g_hg-1);

for(var i = 0; i < line; i++){
	for(var j = 0; j < g_wd; j++){
		ngrid[# j, i] = grid[# j, i];
	}
}

for(var i = line+1; i < g_hg; i++){
	for(var j = 0; j < g_wd; j++){
		ngrid[# j, i-1] = grid[# j, i];
	}
}

return ngrid;
}