
//get list of layers in room so as to respect drawing order
layers = layer_get_all();
num_layers = array_length_1d(layers)-1;

ds_heightgrid = 0;
ds_heightgrid = ds_grid_create(2,1);

//show_debug_message(layers);

/*
for(var i = 0; i < array_length_1d(layers); i++){
	layers[i] = layer_get_name(layers[i]);
}
*7