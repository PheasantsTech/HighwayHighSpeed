/*
usage: image_angle_adjust_smoothly(object, target_angle, maximal_move)

Smoothly moves with image_angle of object until it reaches target angle
*/

var relative_angle = argument0.image_angle - argument1;
if argument0.image_angle > (argument1 + 180) then relative_angle = argument1 - (360 - argument0.image_angle)

argument0.image_angle -= min(argument2, abs(relative_angle)) * sign(relative_angle);

