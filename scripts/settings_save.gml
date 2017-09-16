globalvar save_file, encryption_password, achievements, achievements_vars, car_info, debug;

var list_owned_cars = ds_list_create();
var car = ds_map_find_first(car_info);
while(not is_undefined(car)){
    var map_car = car_info[? car];
    var owned = map_car[? "owned"];
    if owned then ds_list_add(list_owned_cars, car);
    car = ds_map_find_next(car_info, car);
}
list_owned_cars = ds_list_to_map(list_owned_cars);

var big_map = ds_map_create();

big_map[? 'achievements'] = json_encode(achievements);
big_map[? 'achievements_vars'] = json_encode(achievements_vars);
big_map[? 'owned_cars'] = json_encode(list_owned_cars);

var file = file_text_open_write(save_file);
file_text_write_string(file, string_encrypt(json_encode(big_map), encryption_password));
file_text_close(file);

if debug {
    var file = file_text_open_write(save_file + '.debug');
    file_text_write_string(file, json_encode(big_map));
    file_text_close(file);
}

ds_map_destroy(list_owned_cars);  // list was converted to map
ds_map_destroy(big_map);
