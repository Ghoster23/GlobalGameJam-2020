{
var fl_name   = argument0;
var delimiter = argument1;

var file = file_text_open_read(working_directory + fl_name);

var line = file_text_readln(file);
file_text_close(file);

var count = 0;
var i = 0;
var c = string_char_at(line,i);
i++;

while(c != "\n" and c != ""){
	c = string_char_at(line,i);
	i++;
	
	if(c == delimiter){
		count++;
	}
}

return count + 1;
}