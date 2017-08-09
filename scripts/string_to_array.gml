/*
usage: string_to_array(string)
*/
var arr;
arr[0] = '';
for(var i = 1; i <= string_length(argument0); i++)
    arr[i - 1] = string_char_at(argument0, i);
return arr;
