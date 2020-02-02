///@description Creates a Blast Action ds_map
///@param grid_x
///@param grid_y
{
var _cx = argument0;
var _cy = argument1;

var _type = action_types.blast;

var _act = act_create(_type);

ds_map_add(_act, "GridX", _cx);
ds_map_add(_act, "GridY", _cy);

return _act;
}