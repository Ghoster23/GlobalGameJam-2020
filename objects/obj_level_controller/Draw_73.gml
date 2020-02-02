var cursor_x = obj_phy_cursor.x;
var cursor_y = obj_phy_cursor.y;


var _pieces =  "State - " + string(state) + " Time Step - " + string(global.time_step) + "\n";

var i = 0;
while(not is_undefined(global.gamepiece_list[| i])) {
	var _piece = global.gamepiece_list[| i];
	_pieces += object_get_name(_piece.object_index) + " " + string(_piece.id);
	_pieces += " - State: " + string(_piece.state) + " Action Count: " + string(_piece.action_count) + " Time Step: " + string(_piece.time_step);
	_pieces += "\n"
	
	i++;
}

draw_text(global.level_columns * global.cell_size, global.level_rows = global.cell_size, _pieces);


var cell_x = cursor_x div global.cell_size;
var cell_y = cursor_y div global.cell_size;

if(cell_x >= global.level_columns or cell_x < 0){
	exit;
}
		
if(cell_y >= global.level_rows or cell_y < 0){
	exit;
}

var content = global.level_grid[# cell_x, cell_y];
if(is_undefined(content)){
	exit;
} 


draw_sprite_ext(spr_board_selector, 0, cell_x * global.cell_size, cell_y* global.cell_size, 1, 1, 0, c_white, 0.6);
