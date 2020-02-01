
// Destroy level nfo
if(ds_exists(global.level_info, ds_type_list)) {
	ds_list_destroy(global.level_info);
}