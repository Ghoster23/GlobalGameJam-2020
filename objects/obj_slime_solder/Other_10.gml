/// @description Decide next action
#region Find food
var _res = gt_find(obj_food_solder);

var _min_dist = infinity;

var _food_tile = noone;

while(_res[| 0]) {
	var _f_food = _res[| 0];
	ds_list_delete(_res, 0);
	
	var _dist = point_distance(grid_x, grid_y, _f_food.grid_x, _f_food.grid_y);
	
	if(_dist > 5) continue;
	
	// If food in sight
	if(collision_line(x, y, _f_food.x, _f_food.y, obj_gamepiece_parent, false, true) == noone) {
		// If it is the closest food yet
		if(_dist < _min_dist) {
			_food_tile = _f_food; // Target it
			_min_dist = _dist;    // Save min dist
		}
	}
}

ds_list_destroy(_res);
#endregion

// If it has stamina
if(food > 0 and not cooldown) {
	ds_list_add(actions, act_solder_create());
	action_count++;
	
	food--;
	cooldown = true;
	return;
}
// If it ate too much
else if(eaten > 2) {
	ds_list_add(actions, act_die_create());
	action_count++;
}
// If there's food to go after
else if(_food_tile != noone) {
	var _dx = sign(_food_tile.grid_x - grid_x);
	var _dy = sign(_food_tile.grid_y - grid_y);
	
	// If it's at the food tile
	if(_dx == move_horizontal.none and _dy == move_vertical.none) {
		ds_list_add(actions, act_eat_create(_food_tile));
		action_count++;
	}
	// If it has to move to the food tile
	else {
		var _cell = global.level_grid[# grid_x + _dx, grid_y + _dy];
		var _piece = _cell[0];
		
		if(_piece == noone) {
			ds_list_add(actions, act_move_create(_dx, _dy));
			action_count++;
			
			_cell[0] = cell_reservation.solder;
			global.level_grid[# grid_x + _dx, grid_y + _dy] = _cell;
		}
	}
	
	cooldown = false;
}