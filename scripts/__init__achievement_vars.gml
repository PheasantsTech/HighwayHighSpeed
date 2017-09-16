globalvar achievements_vars;

achievements_vars = ds_map_create();

achievements_vars[? 'top_score'] = 0;
achievements_vars[? 'cars_killed'] = 0;
achievements_vars[? 'cops_killed'] = 0;
achievements_vars[? 'tutorial_completed'] = false;
achievements_vars[? 'first_run'] = true;
achievements_vars[? 'total_distance'] = 0;
achievements_vars[? 'seconds_played'] = 0;
achievements_vars[? 'car_type'] = "SPEEDER 5000";
achievements_vars[? 'cash'] = 0;
achievements_vars[? 'cheating_warning'] = false;  // user was warned about cheating
achievements_vars[? 'cheat_used'] = 0;  // did user already cheated?
achievements_vars[? 'cheat_42'] = false;  // cheat 42
achievements_vars[? 'game_version'] = 0;
