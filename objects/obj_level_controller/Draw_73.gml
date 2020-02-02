var cursor_x = obj_phy_cursor.x;
var cursor_y = obj_phy_cursor.y;

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
