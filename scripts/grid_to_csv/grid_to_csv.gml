{
var fl_name = working_directory + argument0;
var grid    = argument1;

var file = file_text_open_write(fl_name);
var line = "";

var hg = ds_grid_height(grid);
var wd = ds_grid_width(grid);

for(var i = 0; i < hg; i++){
	line = "";
	
	for(var j = 0; j < wd; j++){
		line += string(grid[# j, i]);
		
		if(j < wd - 1){ line += ";"; }
		else { line += "\n"; }
	}
	
	file_text_write_string(file,line);
}

file_text_close(file);
}