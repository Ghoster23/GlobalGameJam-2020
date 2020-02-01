///@description Executes a Move Action
///@param move_action
///@param agent
{
var _act = argument0;
var _obj = argument1;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_act[? "Start"] = [_obj.grid_x, _obj.grid_y];
		
		var _h_dir = _act[? "Horizontal"];
		var _v_dir = _act[? "Vertical"];
		
		_act[? "End"] = [_obj.grid_x + _h_dir, _obj.grid_y + _v_dir];
	
		_state = 1;
	break;
	
	case 1:
		var _h_dir = _act[? "Horizontal"];
		var _v_dir = _act[? "Vertical"];
		
		var _start = _act[? "Start"];
		
		var _fx = (_start[0] + _h_dir + 0.5) * global.cell_size;
		var _fy = (_start[1] + _v_dir + 0.5) * global.cell_size;
	
		if(_obj.x != _fx || _obj.y != _fy) {
			var _dx = _fx - _obj.x;
			var _dy = _fy - _obj.y;
			
			var _norm = sqrt(sqr(_dx) + sqr(_dy));
			
			_obj.x += (_dx / _norm) * _obj.move_speed;
			_obj.y += (_dy / _norm) * _obj.move_speed;
			
			if(abs(_fx - _obj.x) < _obj.move_speed) _obj.x = _fx;
			if(abs(_fy - _obj.y) < _obj.move_speed) _obj.y = _fy;
		}
		else {
			_state = 2;
		}
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}