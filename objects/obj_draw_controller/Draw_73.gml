draw_self();

if(ds_exists(ds_heightgrid, ds_type_grid) == false){
	ds_height_grid = ds_grid_create(2,1);
}
else{
	#region Initialization
	//Assign grid and find instance count
	var heightgrid = ds_heightgrid;
	var instNum   = instance_number(obj_draw_parent);
	
	//If there are any
	if(instNum != 0){
		ds_grid_resize(heightgrid, 2, instNum);
	}
	
	var yy = 0;
	
	with(obj_draw_parent){
		if(visible){
		
			var layer_off = (other.num_layers - layer)*100;
			
			//set id
			heightgrid[# 0, yy] = id;
			
			//set height value
			if(draw_offset != noone){
				heightgrid[# 1, yy] = layer_off + draw_offset;
			}
			else{
				heightgrid[# 1, yy] = layer_off;
			}
			
			yy += 1;
		}
	}
	
	//Sort the instances by Y
	ds_grid_sort(ds_heightgrid, 1, true);
	
	#endregion
	
	#region Draw everything
	yy = 0;
	
	repeat(instNum){
		var instanceID = ds_heightgrid[# 0, yy];
		var instanceY  = ds_heightgrid[# 1, yy];
		
		#region Instances
		with(instanceID){
			
			//if instance has a custom drawing script then use it
			if(draw_script != noone){
				script_execute(draw_script);
			}
			else {
				draw_self();
			}
		}
		#endregion
		
		yy += 1;
	}
	
	ds_grid_clear(ds_heightgrid, 0);
	#endregion
	
}