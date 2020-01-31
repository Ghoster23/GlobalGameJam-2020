/// @description Insert description here
// You can write your code in this editor
layers = layer_get_all();
num_layers = array_length_1d(layers)-1;


grabbing = false;
grabbing_x = 0;
grabbing_y = 0;

binding  = false;
target = noone;
joint = -1;
mouse_speed = 0.1;

phy_fixed_rotation = true;

impulse = 0;

join_mode = false;

forced_release = false;

hovered  = noone;
selected = noone;
