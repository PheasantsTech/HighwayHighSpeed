/*
usage: string_decrypt(string, key)
returns: decrypted string if key is correct, false otherwise
*/

var key = argument1;
if string_length(key) == 0 then return argument0; // Blank key? -> Nothing to encrypt

var key_i = 0;
var str_i = 0;
var encrypted_string = base64_decode(argument0);
if string_length(encrypted_string) == 0 then return ""; // Nothing to decrypt, return empty string
var decrypted_string_array = string_to_array(base64_decode(argument0));
var key_array = string_to_array(key);

var max_i = max(array_length_1d(decrypted_string_array), array_length_1d(key_array));
for(var i = 0; i < max_i; i++){
    var new_value = ord(decrypted_string_array[str_i]) - ord(key_array[key_i]);
    decrypted_string_array[i] = chr(new_value);
    key_i++;
    str_i++;
    if str_i >= array_length_1d(decrypted_string_array) then str_i = 0;
    if key_i >= array_length_1d(key_array) then key_i = 0;
}

var raw_string = array_to_string(decrypted_string_array);

if string_length(raw_string) < 3 or (decrypted_string_array[0] + decrypted_string_array[1] + decrypted_string_array[2]) != "DEC" then return false; // Means we have wrong decryption key

raw_string = string_delete(raw_string, 1, 3);

var char_pos = string_pos(":", raw_string);
if char_pos == 0 then return false; // Means we have wrong decryption key

var decrypted_string_length = real(string_delete(raw_string, char_pos, string_length(raw_string)));

raw_string = string_delete(raw_string, 1, char_pos);

return string_delete(raw_string, decrypted_string_length + 1, string_length(raw_string));
