
// Destroy level nfo
if(ds_exists(global.level_info, ds_type_list)) {
	ds_list_destroy(global.level_info);
}

part_system_destroy(global.ps);
part_type_destroy(global.part_electricity);
part_type_destroy(global.part_solder);