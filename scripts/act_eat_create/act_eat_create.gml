///@description Creates a Eat Action ds_map
///@param food
{
var _food = argument0;

var _type = action_types.eat;

var _act = act_create(_type);

ds_map_add(_act, "Food", _food);

return _act;
}