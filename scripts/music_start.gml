/*
usage: music_start(sound_id)
*/
globalvar music_enabled, music_current, music_current_index;
if not music_enabled then return noone;

music_stop();

music_current_index = argument0;
music_current = audio_play_sound(argument0, 60, true);
