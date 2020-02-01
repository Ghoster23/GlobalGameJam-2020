///@description Executes a Spawn Action
///@param eat_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		var _sx = _act[? "SpawnX"];
		var _sy = _act[? "SpawnY"];
		
		var _obj_ind = _act[? "Object"];
	
		instance_create_layer(_sx, _sy, layer, _obj_ind);
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}