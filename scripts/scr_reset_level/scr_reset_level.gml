
var xx       = argument0;
var yy       = argument1;


var grid = global.placed_things_grid;


for(var i = 0; i < ds_grid_width(grid); i++){

	for(var j = 0; j < ds_grid_height(grid); j++){
	
		var things = global.placed_things_grid[# i, j];
	
		for(var k = 0; k < array_length_1d(things); k++){
			
			var obj = things[k];
			
			instance_create_layer(xx + i*32 + 16, yy + j*32 + 16, "Instances", obj);
				
			//for components make sure to spawn a wire underneath
			if(object_get_parent(obj) == obj_component_parent){
				instance_create_layer(xx + i*32 + 16, yy + j*32 + 16, "GameTiles", obj_wire);
			}	
		}
	}
}