/// @description Insert description here
// You can write your code in this editor


//load things that were placed preveously
if(global.reset){
	
	global.reset = false;	
	
	scr_reset_level(0,0);
	
	obj_console.console_text += "\n fresh level \n"

}
//else this means we are loading a fresh level
else{

	obj_console.console_text += "\n reset level \n"

	if(global.placed_things_grid != noone && ds_exists(global.placed_things_grid, ds_type_grid)){
		
		ds_grid_destroy(global.placed_things_grid);
		global.placed_things_grid = noone;
	}
}
