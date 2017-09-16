/*
usage: ds_map_to_list(map)
returns: list

Reverts ds_list_to_map
*/
var map = argument0;
var list = ds_list_create();
var max_i = ds_map_size(map);

for (var i = 0; i < max_i; i++) {
    if not is_undefined(map[? i])
        list[| i] = map[? i];
    else if not is_undefined(map[? string(i)])
        list[| i] = map[? string(i)];
}
ds_map_destroy(map);
return list;
