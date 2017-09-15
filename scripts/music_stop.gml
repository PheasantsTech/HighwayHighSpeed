/*
usage: music_stop()
*/
globalvar music_enabled, music_current, music_current_index;
if not music_enabled then return noone;

if music_current != noone then audio_stop_sound(music_current);
music_current = noone;
music_current_index = noone;
