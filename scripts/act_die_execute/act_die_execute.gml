///@description Executes a Die Action
///@param diw_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		instance_destroy(id);
		
		return;
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}