///@description Reverts an action
///@param action_type
{
var _act = argument0;

if(_act == -1 || !ds_exists(_act, ds_type_map) || 
	is_undefined(ds_map_find_value(_act, "isAction"))) {
	return;		
}

var _type = _act[? "Type"];

switch(_type) {
	default:
	break;
	
	case action_types.move:
	break;
	
	case action_types.eat:
	break;
}
}