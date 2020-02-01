event_inherited();

grid_x = 0;
grid_y = 0;

ini_grid_x = grid_x;
ini_grid_y = grid_y;

gp_register(id);

class = gamepiece_class.none;

time_step = 0;

state = 0; // [ 0 - Waiting | 1 - Executing Action ]

actions = ds_list_create(); // Actions taken by the piece at each time step

action_index = 0;
action_count = 0;

current_action = -1; // Action at present time step

move_speed = 0;