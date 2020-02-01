scr_unique_inst();

// Level Grid
global.cell_size = 32;

level_rows    = room_height / global.cell_size;
level_columns = room_width  / global.cell_size;

global.level_grid = ds_grid_create(level_rows, level_columns);

ds_grid_set_region(global.level_grid, 0, 0, level_columns - 1, level_rows - 1, [noone, noone]);

// Game Piece List
global.gamepiece_list = ds_list_create();

state = 0; // [ 0 - Inactive | 1 - Playing | 2 - Paused | 3 - Finished ]

global.time_step = 0;