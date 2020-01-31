// Inherit the parent event
event_inherited();

var move_left = act_move_create(move_horizontal.left, move_vertical.none);

var move_down = act_move_create(move_horizontal.none, move_vertical.down);

ds_list_add(actions, move_left, move_down);