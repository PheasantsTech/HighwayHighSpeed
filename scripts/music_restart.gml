/*
usage: music_restart()

Restarts current music. (After e.g. pause)
*/
globalvar music_current_index;
if music_current_index != noone music_start(music_current_index);
