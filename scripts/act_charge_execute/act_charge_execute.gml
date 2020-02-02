///@description Executes a Charge Action
///@param charge_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		var _component = _act[? "Component"];
	
		_component.energy += 1;
		
		_component.last_power_input = [grid_x - _component.grid_x, grid_y - _component.grid_y];
		
		instance_destroy(self.id);
		
		return;
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}