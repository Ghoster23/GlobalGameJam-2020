{
var prnt = argument0;

if(is_descended(prnt,obj_window_parent)){
	with(prnt){
		if(ds_exists(sub_windows,ds_type_list)){
			ds_list_add(sub_windows,other.id);
		}
	}
}
}