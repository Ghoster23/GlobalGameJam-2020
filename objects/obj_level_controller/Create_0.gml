scr_unique_inst();

global.cell_size = 32;

level_rows = room_height / global.cell_size;

level_columns = room_width / global.cell_size;

level_grid = ds_grid_create(level_rows, level_columns);

