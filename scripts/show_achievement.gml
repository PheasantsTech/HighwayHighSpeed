/*
usage: show_achievement(achievement_name, level)
returns: messages's id
Show an achievement message ONLY if level is bigger than the last one
*/
globalvar achievements;

var d = ds_map_create();

var achievement_data = ds_map_find_value(achievements, argument0);
if (not is_undefined(achievement_data)) {
    ds_map_destroy(d);
    d = json_decode(achievement_data);
    if d[? 'level'] >= argument1 {  // This succcess is not larger than the previous -> no achievement for you
        ds_map_destroy(d);
        return noone;
    }
}

d[? 'level'] = argument1;
d[? 'description'] = achievement_get_description(argument0);
d[? 'icon'] = achievement_get_icon(argument0);

if argument0 != "New top score!" then achievements[? argument0] = json_encode(d);

var r = show_info_message(d[? 'icon'], argument0, d[? 'description'], 3);

ds_map_destroy(d);

return r;

