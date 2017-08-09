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
inst.icon = d[? 'icon'];
inst.subject = argument2;
inst.text = d[? 'description'];
inst.create_sprite = true;

ds_map_destroy(d);
