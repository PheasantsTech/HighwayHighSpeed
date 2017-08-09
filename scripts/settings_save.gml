globalvar save_file, encryption_password, achievements, achievements_vars;

var big_map = ds_map_create();

big_map[? 'achievements'] = json_encode(achievements);
big_map[? 'achievements_vars'] = json_encode(achievements_vars);

var file = file_text_open_write(save_file);
file_text_write_string(file, string_encrypt(json_encode(big_map), encryption_password));
file_text_close(file);

ds_map_destroy(big_map);
