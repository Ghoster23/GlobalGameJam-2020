var display_w = display_get_width();
var display_h = display_get_height();
	
var change_x = (display_mouse_get_x() - display_w/2)/16;
var change_y = (display_mouse_get_y() - display_h/2)/12;
	
obj_console.console_text += "x: " + string(change_x) + " | y: " + string(change_y) + "\n";
	
display_mouse_set(display_w/2,display_h/2);