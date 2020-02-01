/// @description Decide next action
var _res = gp_find_closest(grid_x, grid_y, obj_food);;

var _food_piece = (_res[1] < 5 ? _res[0] : noone);

if(_food_piece != noone) {
	var _dx = _food_piece.grid_x - grid_x;
	var _dy = _food_piece.grid_y - grid_y;
	
	var _hd = move_horizontal.none;
	var _vd = move_vertical.none;
	
	if(_dx < 0) _hd = move_horizontal.left;
	if(0 < _dx) _hd = move_horizontal.right;
	
	if(_dy < 0) _vd = move_vertical.up;
	if(0 < _dy) _vd = move_vertical.down;
	
	if(_hd == move_horizontal.none && _vd == move_vertical.none) {
		ds_list_add(actions, act_eat_create(_food_piece));
		action_count += 1;
	}
	else {
		ds_list_add(actions, act_move_create(_hd, _vd));
		action_count += 1;
	}
}