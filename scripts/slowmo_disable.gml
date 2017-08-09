globalvar slowmo_shader;

if slowmo_shader == noone then exit;

shader_destroy(slowmo_shader);
slowmo_shader = noone;

background_vspeed[0] /= slowed_radius; // Speed up the room


var max_i = instance_number(obj_power_button);
for ( var i = 0; i < max_i; i++ ){ // Decrease cooldown for all special abilites
    var inst = instance_find(obj_power_button, i);
    inst.alarm[1] *= slowed_radius;
}


var inst = instance_find(obj_btn_repel, 0); // Decrease repel duration
inst.alarm[0] *= slowed_radius;

var inst = instance_find(obj_btn_special, 0); // Decrease another effect duration
inst.alarm[0] *= slowed_radius;

var max_i = instance_number(obj_crashable);
for ( var i = 0; i < max_i; i++ ){ // Speed up all cars
    var inst = instance_find(obj_crashable, i);
    inst.vspeed /= slowed_radius;
    inst.hspeed /= slowed_radius;
    inst.image_speed /= slowed_radius;
}

var max_i = instance_number(obj_helicopter_fuel);
for ( var i = 0; i < max_i; i++ ){ // Speed up all choppas
    var inst = instance_find(obj_helicopter_fuel, i);
    inst.moving_speed /= slowed_radius;
    inst.image_speed /= slowed_radius;
    inst.speed /= slowed_radius;
}
