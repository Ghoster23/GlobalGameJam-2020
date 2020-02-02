///@description Executes a Eat Action
///@param eat_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		var _food = _act[? "Food"];
		
		_act[? "Food"] = _food.object_index;
		
		food += _food.nourish;
		
		eaten++;
		
		instance_destroy(_food);
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}