///@description Creates a Spawn Action ds_map
///@param cell_x
///@param cell_y
///@param obj_ind
{
var _cx = argument0;
var _cy = argument1;

var _obj_ind = argument2;

var _type = action_types.spawn;

var _act = act_create(_type);

ds_map_add(_act, "SpawnX", _cx);
ds_map_add(_act, "SpawnY", _cy);

ds_map_add(_act, "Object", _obj_ind);

return _act;
}