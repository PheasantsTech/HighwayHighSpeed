globalvar petrol, petrol_max, cars_left, distance, cars_killed, wanted_level, wanted_level_max, music_enabled, debug, save_file, disable_power_buttons;
globalvar slowmo_shader, info_message, queue_info_messages, music_current, music_current_index, disable_cars_and_petrol, skinset, explosive_touch;
globalvar game_paused;

debug = false;

petrol = 0;
petrol_max = 1000;
cars_left = 0;
distance = 0;
cars_killed = 0;
wanted_level = 0;
wanted_level_max = 5;
music_enabled = true;
disable_cars_and_petrol = false;
disable_power_buttons = false;
slowmo_shader = noone;
achievements = ds_map_create();
info_message = noone;
queue_info_messages = ds_list_create();
music_current = noone;
music_current_index = noone;
skinset = "FUTURE"; // Known skinsets: FUTURE, CLASSIC
game_paused = false;

explosive_touch = false; // can be activated by a cheatcode
autoshield = false; // can be activated by a cheatcode

save_file = "saved.dat";

__init__last_words();
__init__top_score_messages();
__init__achievement_vars();
__init__car_info();

__init__encryption_password();
