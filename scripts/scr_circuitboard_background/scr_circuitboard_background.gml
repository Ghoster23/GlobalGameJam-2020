/// @description circuitboard_background
/// @argument    num_w_tiles
/// @argument    num_h_tiles


var w_tiles = argument0; 
var h_tiles = argument1;

var w = w_tiles*32; 
var h = h_tiles*32;

var surf = surface_create(w, h);
surface_set_target(surf);

//PCB background
var sprw = sprite_get_width(spr_circuit_board);
var sprh = sprite_get_height(spr_circuit_board);

var i_max = max(sprw mod w, 1);
var j_max = max(sprh mod h, 1);

for(var i = 0; i < i_max; i++){
	for(var j = 0; j < j_max; j++){
	
		draw_sprite(spr_circuit_board, 0, i*sprw, j*sprh);
	}
}

//PCB frame
scr_9SB_ext(spr_circuit_board_9sb, 0, 0, w, h, 1, 1);

//clean surf and retrun sprite
surface_reset_target();
var spr = sprite_create_from_surface(surf, 0, 0, w, h, false, false, 0, 0);
surface_free(surf);

return spr;
