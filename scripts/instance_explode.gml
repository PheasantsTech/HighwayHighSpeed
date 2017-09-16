/*
usage: instance_explode(inst)

explodes instance
*/
globalvar cars_killed;

var inst = argument0;

effect_create_above(ef_explosion, x, y, 2, make_colour_rgb(255,244,0));
audio_play_sound_on(inst.aem, sound_explosion, false, 50);

inst.sprite_index = spr_noone;
inst.dead = true;
cars_killed ++;

var insts_y = ds_map_create();

while true {
    var inst = collision_circle( x, y, (max(sprite_width, sprite_height) / 2) * 1.5, obj_crashable, false, true );
    if inst == noone then break;
    if not inst.dead {
        with inst
            alarm[10] = room_speed / 10;
    }
    insts_y[? inst] = inst.y;
    inst.y = -20000;
}

var inst = ds_map_find_first(insts_y);
while not is_undefined(inst) {
    inst.y = insts_y[? inst];
    inst = ds_map_find_next(insts_y, inst);
}
ds_map_destroy(insts_y);


