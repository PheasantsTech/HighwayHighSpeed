/*
usage: ds_list_to_map(list)
returns: map

Converts list to map, destroing previously created list
*/
var list = argument0;
var max_i = ds_list_size(list);
var map = ds_map_create();
for(var i = 0; i < max_i; i++)
    map[? i] = list[| i];
ds_list_destroy(list);
return map;
