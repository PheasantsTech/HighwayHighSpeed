/*
usage: show_info_message(icon, subject, description, lasting_seconds)
returns: messages's id
*/
globalvar queue_info_messages;

var inst = instance_create(-5000, -5000, obj_ingame_message);
inst.icon = argument0;
inst.subject = argument1;
inst.text = argument2;
inst.last_seconds = argument3;
if string_length(argument2) > 110 then inst.sprite_index = spr_achivement_large;
inst.create_sprite = true;

ds_list_add(queue_info_messages, inst.id);

return inst;

