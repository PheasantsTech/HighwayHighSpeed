globalvar save_file, encryption_password, achievements, achievements_vars, car_info, debug;

if not file_exists(save_file) then return noone;

var debug_save_file = save_file + '.debug';
if debug and file_exists(debug_save_file) {
    var file = file_text_open_read(debug_save_file);
    var decrypted_text = file_text_read_string(file);
    file_text_close(file);
} else {
    var file = file_text_open_read(save_file);
    var decrypted_text = string_decrypt(file_text_read_string(file), encryption_password);
    file_text_close(file);
}

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

if not is_undefined(big_map[? 'owned_cars']){
    var list_owned_cars = ds_map_to_list(json_decode(big_map[? 'owned_cars']));
    var max_i = ds_list_size(list_owned_cars);
    for (var i = 0; i < max_i; i++){
        var car = list_owned_cars[| i];
        if not is_undefined(car_info[? car]) {
            var car_map = car_info[? car];
            car_map[? "owned"] = true;
        }
    }
    ds_list_destroy(list_owned_cars);
}

ds_map_destroy(big_map);

