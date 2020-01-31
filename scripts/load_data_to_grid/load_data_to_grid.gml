///@param file_start_line
///@param grid_start_line
///@param file_name
{
var sx = argument0;
var sy = argument1;

var fl_name = argument2;

var hg = scr_file_count_lines(fl_name);

if(hg == 0){
	return -1;
}

var wd = scr_csv_count_columns(fl_name,";");

var grid = ds_grid_create(wd,hg);
grid = csv_text_to_grid(fl_name,grid,hg,wd,sx,sy);
grid = ds_grid_parse_content(grid);

return grid;
}