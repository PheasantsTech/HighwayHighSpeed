/*
usage: encrypt(string, key)
*/

var raw_string = argument0;
var key = argument1;

if string_length(key) == 0 then return argument0; // Blank key? -> Nothing to encrypt

raw_string = "DEC" + string(string_length(raw_string)) + ":" + raw_string;
while string_length(raw_string) < (string_length(key) / 4)
    raw_string += chr(irandom(256));

var key_i = 0;
var str_i = 0;
var encrypted_string_array = string_to_array(raw_string);
var key_array = string_to_array(key);

var max_i = max(array_length_1d(encrypted_string_array), array_length_1d(key_array));
for(var i = 0; i < max_i; i++){
    var new_value = ord(encrypted_string_array[str_i]) + ord(key_array[key_i]);
    encrypted_string_array[i] = chr(new_value);
    key_i++;
    str_i++;
    if str_i >= array_length_1d(encrypted_string_array) then str_i = 0;
    if key_i >= array_length_1d(key_array) then key_i = 0;
}

return base64_encode(array_to_string(encrypted_string_array));
