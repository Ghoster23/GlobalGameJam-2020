/// @description Insert description here
// You can write your code in this editor

if(loaded){
	draw_self();
	exit;
}

loaded = true;

var level_info = global.level_info[|global.level_number];
sprite_index = scr_circuitboard_background(level_info[0], level_info[1]);
draw_self();
	