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


//set counters for resources
var buttons = obj_selector.buttons;
buttons[1].stock       = _info[3];
buttons[1].units_left  = _info[3];
buttons[1].initialized = true;

buttons[2].stock       = _info[4];
buttons[2].units_left  = _info[4];
buttons[2].initialized = true;

buttons[3].stock       = _info[5];
buttons[3].units_left  = _info[5];
buttons[3].initialized = true;

buttons[4].stock       = _info[6];
buttons[4].units_left  = _info[6];
buttons[4].initialized = true;