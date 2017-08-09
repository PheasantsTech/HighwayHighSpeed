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
