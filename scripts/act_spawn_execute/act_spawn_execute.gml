///@description Executes a Spawn Action
///@param spawn_action
{
var _act = argument0;

var _state = _act[? "State"];

switch(_state) {
	case 0:
		_state = 1;
	break;
	
	case 1:
	
		scr_play_sound(snd_electric3);
		
		var _sx = _act[? "SpawnX"];
		var _sy = _act[? "SpawnY"];
		
		var _obj_ind = _act[? "Object"];
	
		var _inst = instance_create_layer((_sx + 0.5) * global.cell_size, (_sy + 0.5) * global.cell_size, layer, _obj_ind);
		
		with(_inst) {
			origin = other.id;
			time_step = global.time_step;
			
			orientation = calculate_orientation(grid_x - other.grid_x,  grid_y - other.grid_y);
		}
		
		_state = 2;
	break;
	
	case 2:
	break;
}

_act[? "State"] = _state;
}