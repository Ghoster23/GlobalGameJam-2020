///@description Creates an Action ds_map
///@param action_type
{
var _type = argument0;

var _action = ds_map_create();

ds_map_add(_action, "isAction", true);

ds_map_add(_action, "Type", _type);

ds_map_add(_action, "State", 0); // [ 0 - Start | 1 - Going | 2 - Done ]

return _action;
}