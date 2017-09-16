/*
usage: file_text_read_whole(path, [newline_character=""])
return: complete content of file
*/
var newline_character = "";
if argument_count > 1 then newline_character = argument[1];
var reader = file_text_open_read(argument[0]);
var buffer = "";
while (!file_text_eof(reader))
   buffer += file_text_readln(reader) + newline_character;
file_text_close(reader);
return buffer;