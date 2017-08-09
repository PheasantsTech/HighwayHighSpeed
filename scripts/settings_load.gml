globalvar save_file, encryption_password, achievements, achievements_vars;

if not file_exists(save_file) then return noone;

var file = file_text_open_read(save_file);
var decrypted_text = string_decrypt(file_text_read_string(file), encryption_password);
file_text_close(file);

/*if (decrypted_text == false) {  // user tried to edit this file
    file_rename(save_file, save_file + '.old');
    show_message("Oh no! Something has damaged my savefiles. Now I have to wipe all your progress. ( In case it was you, please edit it back. )");
    return noone;
}*/

if string_length(decrypted_text) == 0 then return noone;

var big_map = json_decode(decrypted_text);

ds_map_destroy(achievements);
achievements = json_decode(big_map[? 'achievements']);

var little_map = json_decode(big_map[? 'achievements_vars']);
var key = ds_map_find_first(little_map);
while not is_undefined(key){
    var val = little_map[? key];
    achievements_vars[? key] = val;
    key = ds_map_find_next(little_map, key);
}
ds_map_destroy(little_map);

ds_map_destroy(big_map);

