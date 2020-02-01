scr_unique_inst();

// Level Grid
global.cell_size = 32;

global.level_rows    = room_height / global.cell_size;
global.level_columns = room_width  / global.cell_size;

global.level_grid = ds_grid_create(global.level_rows, global.level_columns);

ds_grid_set_region(global.level_grid, 0, 0, global.level_columns - 1, global.level_rows - 1, [noone, noone]);

// Game Piece List
global.gamepiece_list = ds_list_create();

state = 0; // [ 0 - Inactive | 1 - Playing | 2 - Paused | 3 - Finished ]

global.time_step = -1;

// Command Flags
pressed_play  = false;
pressed_pause = false;
pressed_reset = false;