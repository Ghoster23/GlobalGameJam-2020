scr_unique_inst();

// Level Grid
global.cell_size = 32;

var _info = global.level_info[| global.level_number];

global.level_rows    = _info[1];
global.level_columns = _info[0];

global.level_grid = ds_grid_create(global.level_columns, global.level_rows);

ds_grid_set_region(global.level_grid, 0, 0, global.level_columns - 1, global.level_rows - 1, [noone, noone]);

// Game Piece List
global.gamepiece_list = ds_list_create();

// Game Tile List
global.gametile_list = ds_list_create();

state = 0; // [ 0 - Inactive | 1 - Playing | 2 - Paused | 3 - Finished ]

global.time_step = 0;

// Command Flags
pressed_play  = false;
pressed_pause = false;
pressed_reset = false;

scr_load_level(global.level_number, 0, 0);

//spawn board
instance_create_layer(0,0,"Board",obj_circuitboard);

//add constraints to camera
var space = -30;
var info = global.level_info[|global.level_number];

var w = info[0] * 32;
var h = info[1] * 32;

global.camera.left_boundary    =    -space;
global.camera.right_boundary   =  w + space;
global.camera.top_boundary     =    -space;
global.camera.bottom_boundary  =  h + space;

