///@description Creates a Charge Action ds_map
///@param component
{
var _component = argument0;

var _type = action_types.charge;

var _act = act_create(_type);

ds_map_add(_act, "Component", _component);

return _act;
}