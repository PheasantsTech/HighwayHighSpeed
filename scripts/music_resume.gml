/*
usage: music_pause()
*/
globalvar music_enabled, music_current;
if not music_enabled then return noone;

if music_current != noone then audio_resume_sound(music_current);
