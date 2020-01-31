/// @description Insert description here
// You can write your code in this editor
if(target == noone){
	exit;
}

//get things near cursor
var nearest_things = ds_list_create();
collision_circle_list(x,y, 400, obj_interactible_parent, false, true, nearest_things, true);

//organise them by draw order and if not colliding remove
if(nearest_things!=noone){
	
	var i          = 0;
	var max_height = -1;
	var chosen     = noone;
	
	while(i < ds_list_size(nearest_things)){
		
		this_thing = ds_list_find_value(nearest_things,i);
		
		#region remove stuff not actually colliding with cursor
		
		if(!place_meeting(x,y,this_thing)){
			ds_list_delete(nearest_things,i);
			continue;
		}

		#endregion
		
		#region take care of height filtering 
		
		var this_height = num_layers - 1 - this_thing.layer;
		if(variable_instance_exists(this_thing,"draw_offset")){
			this_height += this_thing.draw_offset;
		}
		
		if(max_height == -1 or max_height < this_height){
			max_height = this_height
			chosen = this_thing;
		}	

		#endregion
		
		i++;
	}
}

ds_list_destroy(nearest_things);

//update hovered and selected
if(mouse_check_button_pressed(mb_left)){
	selected = chosen;
}
if(mouse_check_button_released(mb_left)){
	selected = noone;
}

if(selected == noone){
	if(hovered != noone){
		hovered.hover = false;
	}
	hovered       = chosen;
	if(chosen != noone){
		hovered.hover = true;
	}
}

gui_x = device_mouse_x_to_gui(0);
gui_y = device_mouse_y_to_gui(0);
 
//show_debug_message("H-> " + string(hovered) + "    S-> " + string(selected))