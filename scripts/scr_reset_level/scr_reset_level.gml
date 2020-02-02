var list = global.placed_things_list;

if(list == noone){
	exit;
}

for(var i = 0; i < ds_list_size(list); i++){
			
	var thing = global.placed_things_list[|i];
	
	var xx  = thing[0];
	var yy  = thing[1];
	var obj = thing[2];
			
	instance_create_layer(xx, yy, "Instances", obj);
				
	//for components make sure to spawn a wire underneath
	if(object_get_parent(obj) == obj_component_parent){
		instance_create_layer(xx, yy, "GameTiles", obj_wire);
	}	
	
}