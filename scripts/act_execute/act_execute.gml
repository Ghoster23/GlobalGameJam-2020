///@description Executes an action
///@param action
///@param agent
{
var _act = argument0;
var _obj = argument1;

#region Argument Verification
if(_act == -1 || !ds_exists(_act, ds_type_map) || 
	is_undefined(ds_map_find_value(_act, "isAction"))) {
	show_debug_message("Provided argument is not a Move Action DsMap - " + string(_act));
	return;		
}

var _type = _act[? "Type"];

if(!instance_exists(_obj)) {
	show_debug_message("Provided instance for " + string(_type) + " type action does not exist - " + string(_obj));
	return;
}

if(!is_descended(_obj.object_index, obj_gamepiece_parent)) {
	show_debug_message("Provided instance for " + string(_type) + " type action is not a GamePiece - " + string(_obj));
	return;
}
#endregion

var _type = _act[? "Type"];

switch(_type) {
	default:
	break;
	
	case action_types.move:
		act_move_execute(_act, _obj);
	break;
	
	case action_types.eat:
		act_eat_execute(_act);
	break;
	
	case action_types.spawn:
		act_spawn_execute(_act);
	break;
	
	case action_types.charge:
		act_charge_execute(_act);
	break;
}
}