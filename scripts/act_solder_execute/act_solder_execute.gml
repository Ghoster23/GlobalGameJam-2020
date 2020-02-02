///@description Executes a Solder Action
///@param solder_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
		var _inst = instance_create_layer((grid_x + 0.5) * global.cell_size, (grid_y + 0.5) * global.cell_size, "GameTiles", obj_wire);
		
		_inst.time_step = global.time_step;
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}