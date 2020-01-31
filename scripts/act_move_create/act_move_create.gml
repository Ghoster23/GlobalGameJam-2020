///@description Creates a Move Action ds_map
///@param horizontal
///@param vertical
{
var _h_dir = argument0;
var _v_dir = argument1;

var _type = action_types.move;

var _act = act_create(_type);

ds_map_add(_act, "Horizontal", _h_dir);
ds_map_add(_act,   "Vertical", _v_dir);

return _act;
}