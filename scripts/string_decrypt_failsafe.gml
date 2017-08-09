/*
usage: string_decrypt_failsafe(string, key)
*/

var r = string_decrypt(argument0, argument1);
/*if not r {
    show_message("Damaged files. Cannot start.");
    game_end();
}*/ //TODO Add something failsafe
return r;
