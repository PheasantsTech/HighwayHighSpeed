/*
usage: paint_achivement(x, y, achivement_name)
*/
globalvar achievements;

var achievement_data = ds_map_find_value(achievements, argument2);
if (is_undefined(achievement_data)) {
    return false;
}

var d = json_decode(achievement_data);

var inst = instance_create(argument0, argument1, obj_paint_achivement);
// var icon = d[? 'icon'];
var icon = achievement_get_icon(argument2);  // obtain icon from script rather than from saved data
inst.icon = icon;
inst.subject = argument2;
inst.text = d[? 'description'];
inst.create_sprite = true;

ds_map_destroy(d);
