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

global.time_step = 0;

// Command Flags
pressed_play  = false;
pressed_pause = false;
pressed_reset = false;

//LEVEL INFO 
global.level_info = ds_list_create();

// w, h, file_name
ds_list_add(global.level_info, [20, 10, "level0.csv"]); //0
ds_list_add(global.level_info, [5,  10, "level1.csv"]); //1

scr_load_level(global.level_number, 0, 0);

//spawn board
instance_create_layer(0,0,"Board",obj_circuitboard);
