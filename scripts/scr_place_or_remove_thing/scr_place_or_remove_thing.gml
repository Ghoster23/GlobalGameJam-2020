/// @description scr_place_or_replace
/// @argument    cell_x
/// @argument    cell_y
/// @argument    piece
/// @argument	 tile

var cell_x  = argument0;
var cell_y  = argument1;
var piece   = argument2;
var tile    = argument3;

var xx = cell_x * global.cell_size + global.cell_size/2;
var yy = cell_y * global.cell_size + global.cell_size/2;

//make sure list exists
if(global.placed_things_list == noone){
	
	global.placed_things_list = ds_list_create();
	
}

//if nothing is selected nothing happens
var new_thing = obj_selector.selected;
if(new_thing == noone){
	exit;
}

var new_obj = new_thing.obj; 
//scr_console_debug_message(string(object_get_name(new_obj)));

//delete mode
if(new_obj == noone){
	
	//remove piece
	if(piece != noone){
		
		var thing = scr_placed_things_find_index(xx, yy, piece.object_index);
		if(thing != -1){
		
			scr_clear_placed_thing(piece);
			with(piece){
				instance_destroy();
			}
		}
	}
	//remove tile
	if(tile != noone){
		
		var thing = scr_placed_things_find_index(xx, yy, tile.object_index);
		if(thing != -1){
		
			scr_clear_placed_thing(tile);
			with(tile){
				instance_destroy();
			}
		}
	}
}

//place piece
else if(is_descended(new_obj, obj_gamepiece_parent)){
	
	if(piece == noone){
		
		//conditions
		switch(new_obj){
		
			case obj_slime_blast:
			case obj_slime_solder:
				
				if(tile == noone or tile.object_index != obj_slime_pad){
					exit;
				}
			break;
		
		}
		
		var ob = instance_create_layer(xx, yy, "Instances", new_obj);
		scr_save_placed_thing(ob);
	}
}

//place tile
else if(is_descended(new_obj, obj_gametile_parent)){

	if(tile == noone){
		
		//conditions
		switch(new_obj){
		
			case obj_food_solder:
			break;
		
		}
		
		var ob = instance_create_layer(xx, yy, "Instances", new_obj);
		scr_save_placed_thing(ob);
	}
}
