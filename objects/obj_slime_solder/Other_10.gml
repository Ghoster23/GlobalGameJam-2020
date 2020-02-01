/// @description Decide next action
var _res = gt_find(obj_food);

var _min_dist = infinity;

var _food_tile = noone;

while(_res[| 0]) {
	var _f_food = _res[| 0];
	ds_list_delete(_res, 0);
	
	if(collision_line(x, y, _f_food.x, _f_food.y, obj_gamepiece_parent, false, true) == noone) {
		var _dist = point_distance(grid_x, grid_y, _f_food.grid_x, _f_food.grid_y);
		
		if(_dist < _min_dist) {
			_food_tile = _f_food;
			_min_dist = _dist;
		}
	}
}

ds_list_destroy(_res);

if(_food_tile != noone) {
	var _dx = _food_tile.grid_x - grid_x;
	var _dy = _food_tile.grid_y - grid_y;
	
	var _hd = move_horizontal.none;
	var _vd = move_vertical.none;
	
	if(_dx < 0) _hd = move_horizontal.left;
	if(0 < _dx) _hd = move_horizontal.right;
	
	if(_dy < 0) _vd = move_vertical.up;
	if(0 < _dy) _vd = move_vertical.down;
	
	if(_hd == move_horizontal.none && _vd == move_vertical.none) {
		ds_list_add(actions, act_eat_create(_food_tile));
		action_count += 1;
	}
	else {
		var _cell = global.level_grid[# grid_x + _hd, grid_y + _vd];
		var _piece = _cell[0];
		
		if(_piece == noone) {
			ds_list_add(actions, act_move_create(_hd, _vd));
			
			_cell[0] = 0;
			global.level_grid[# grid_x + _hd, grid_y + _vd] = _cell;
			
			action_count += 1;
		}
	}
}