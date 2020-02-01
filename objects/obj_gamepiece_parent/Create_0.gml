grid_x = x div global.cell_size;
grid_y = y div global.cell_size;

// Register Piece in the Level Grid
var _present = global.level_grid[# grid_x, grid_y];
_present[0] = self.id;
global.level_grid[# grid_x, grid_y] = _present;

// Register Piece in the GamePiece List
ds_list_add(global.gamepiece_list, self.id);

class = gamepiece_class.none;

finished = 0;

time_step = 0;

actions = ds_list_create(); // Actions taken by the piece at each time step

current_action = 0; // Action at present time step
action_state  = 0; // State of the current action

move_speed = 0;