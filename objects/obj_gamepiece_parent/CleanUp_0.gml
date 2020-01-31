if(ds_exists(actions, ds_type_list)) {
	
	while(!is_undefined(actions[| 0])) {
		var _act = actions[| 0];
		
		if(ds_exists(_act, ds_type_map)) {
			ds_map_destroy(_act);
		}
		
		ds_list_delete(actions, 0);
	}
	
	ds_list_destroy(actions);
}