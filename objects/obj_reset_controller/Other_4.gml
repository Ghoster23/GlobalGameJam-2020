/// @description Insert description here
// You can write your code in this editor


//load things that were placed preveously
if(global.reset){
	
	global.reset = false;	
	
	scr_reset_level();

}
//else this means we are loading a fresh level
else{

	if(global.placed_things_list != noone && ds_exists(global.placed_things_list, ds_type_list)){
		
		ds_list_destroy(global.placed_things_list);
		global.placed_things_list = noone;
	}
}
