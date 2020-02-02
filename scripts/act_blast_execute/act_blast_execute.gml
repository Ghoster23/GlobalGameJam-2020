///@description Executes a Blast Action
///@param blast_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		var _cell = global.level_grid[# _act[? "GridX"], _act[? "GridY"]];
		
		var _piece = _cell[0];
		var _tile  = _cell[1];
		
		instance_destroy(_piece);
		instance_destroy(_tile);
		
		instance_destroy();
		
		return;
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}