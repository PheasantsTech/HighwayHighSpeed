/*
usage: sprite_create_button(text)
*/
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var background_sprite = spr_button;

var surf = surface_create(sprite_get_width(background_sprite), sprite_get_height(background_sprite));
surface_set_target(surf);
draw_sprite(background_sprite, 0, 0, 0);

var text_x = sprite_get_width(background_sprite) / 2;
var text_y =  sprite_get_height(background_sprite) / 2;

draw_set_color(make_colour_rgb(43,139,212) );
draw_set_font(font_button);
draw_text(text_x, text_y, argument0);

var sprite = sprite_create_from_surface(surf, 0, 0, sprite_get_width(background_sprite), sprite_get_height(background_sprite), true, true, 0, 0);
surface_reset_target();
surface_free(surf);

return sprite;
