/// @description Insert description here
// You can write your code in this editor

if(global.level_number == 0){
	global.level_number = global.total_level_no - 1;
}
else{
	global.level_number = (global.level_number - 1);
}

room_restart();