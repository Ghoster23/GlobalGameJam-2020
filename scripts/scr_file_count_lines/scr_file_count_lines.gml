{
var fl_name = argument0;
var count = 0;

var file = file_text_open_read(working_directory + fl_name);

while(not file_text_eof(file)){
	file_text_readln(file);
	count++;
}

file_text_close(file);

return count;
}