/// @description scr_load_level
/// @argument    level_number
/// @argument    x
/// @argument    y

var level_no = argument0;  // level_number
var xx       = argument1;
var yy       = argument2;

var level_info = global.level_info[|level_no]; 

var tile_size = [];
tile_size[0]  = level_info[0];   
tile_size[1]  = level_info[1]; 

var file_name = level_info[2];



//load strings to ds_grid
var grid = ds_grid_create(tile_size[0], tile_size[1]);
grid = csv_text_to_grid(file_name, grid, tile_size[1], tile_size[0], 0, 0);

//iterate trough grid and spawn each object
for(var i = 0; i < ds_grid_width(grid); i++){

	for(var j = 0; j < ds_grid_height(grid); j++){
	
		var str_content = grid[# i, j];
		var names = scr_string_split(str_content, "#");
		
		for(var k = 0; k < array_length_1d(names); k++){
			
			var name = names[k];
			
			var obj = asset_get_index(name);
			if(obj != -1){
				
				instance_create_layer(xx + i*32 + 16, yy + j*32 + 16, "Instances", obj);
				
				//for components make sure to spawn a wire underneath
				if(object_get_parent(obj) == obj_component_parent){
					instance_create_layer(xx + i*32 + 16, yy + j*32 + 16, "GameTiles", obj_wire);
				}			
			}
			else{
				
				obj_console.console_text += "\n GameObject doesn't exist: " + string(name) + "\n";
			}
		}
	}
}
