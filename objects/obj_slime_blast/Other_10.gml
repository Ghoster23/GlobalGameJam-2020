/// @description Decide next Action
#region Find Food
var _res = gt_find(obj_food_blast);

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

#region Food Found
if(_food_tile != noone) {
	var _dx = sign(_food_tile.grid_x - grid_x);
	var _dy = sign(_food_tile.grid_y - grid_y);
	
	if(_dx == move_horizontal.none and _dy == move_vertical.none) {
		ds_list_add(actions, act_eat_create(_food_tile));
		action_count += 1;
	}
	else {
		var _cell = global.level_grid[# grid_x + _dx, grid_y + _dy];
		var _piece = _cell[0];
		
		// If cell is unoccupied or there's a Energy Slime going to ti
		if(_piece == noone or _piece == cell_reservation.energy) {
			ds_list_add(actions, act_move_create(_dx, _dy));
			
			_cell[0] = cell_reservation.blast;
			global.level_grid[# grid_x + _dx, grid_y + _dy] = _cell;
			
			action_count++;
		}
	}
	return;
}
#endregion

#region Food not Found
var _info = gp_find_closest(grid_x, grid_y, obj_slime_energy);

var _energy = _info[0];

if(_energy != noone) {
	var _dx = sign(_energy.grid_x - grid_x);
	var _dy = sign(_energy.grid_y - grid_y);
	
	if(_dx == move_horizontal.none and _dy == move_vertical.none) {
		ds_list_add(actions, act_blast_create(grid_x, grid_y));
		action_count += 1;
	}
	else {
		var _cell = global.level_grid[# grid_x + _dx, grid_y + _dy];
		var _piece = _cell[0];
		
		// If cell is unoccupied
		if(_piece == noone or _piece == cell_reservation.energy or _piece.object_index == obj_slime_energy) {
			ds_list_add(actions, act_move_create(_dx, _dy));
			
			_cell[0] = cell_reservation.blast;
			global.level_grid[# grid_x + _dx, grid_y + _dy] = _cell;
			
			action_count++;
		}
	}
}
#endregion