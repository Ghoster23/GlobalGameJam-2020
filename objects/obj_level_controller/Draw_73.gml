var cursor_x = obj_phy_cursor.x;
var cursor_y = obj_phy_cursor.y;

var cell_x = cursor_x div global.cell_size;
var cell_y = cursor_y div global.cell_size;

draw_set_alpha(0.5);

draw_set_color(c_red);

draw_rectangle(cell_x      * global.cell_size,  cell_y      * global.cell_size, 
			  (cell_x + 1) * global.cell_size, (cell_y + 1) * global.cell_size, false);

draw_set_color(c_white);

draw_set_alpha(1);