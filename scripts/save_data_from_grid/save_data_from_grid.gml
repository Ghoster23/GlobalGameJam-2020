///@param file_name
///@param grid
{
var fl_name = argument0;
var grid    = argument1;

var tgrid = ds_grid_create(ds_grid_width(grid),ds_grid_height(grid));
ds_grid_copy(tgrid,grid);

ds_grid_content_to_string(tgrid);
grid_to_csv(fl_name,tgrid);

ds_grid_destroy(tgrid);
}