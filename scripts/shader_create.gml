/*
usage: shader_create(color, tick_duration)
returns: shader id
*/
var inst = instance_create(0, 0, obj_effect_shader);
inst.duration = argument1;
inst.color = argument0;
return inst;
