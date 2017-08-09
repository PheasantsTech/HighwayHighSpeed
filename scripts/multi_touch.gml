/*
usage: multi_touch()
checks if calling object is being touched and if so, calls 
*/

//Skip 0 because that is catched by classic GM event
for (var i = 1; i < 5; i++) {
    if device_mouse_check_button_pressed(i, mb_left) and position_meeting(device_mouse_x(i),device_mouse_y(i ), self) {
        event_perform(ev_mouse, ev_left_button);
        break;
    }
}
