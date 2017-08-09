/*
usage: info_message_completed(message_id)
returns: true if message was skipped/timed out, false if it is still visible
*/
var r = not instance_exists(argument0);
if !r then r = argument0.completed;
return r;
