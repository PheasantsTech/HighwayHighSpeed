/*
usage: achievement_get_icon(achievement_name)
*/
switch(argument0){
    case "Die young":
        return spr_player_future; // TODO add better sprite
    case "First turns":
        return spr_steering_wheel;
    case "New top score!":
        return spr_ach_trophy;
    case "Wasting time":
        return spr_steering_wheel;
    case "Baby killer":
        return spr_player_future; // TODO add better sprite
    case "Learned":
        return spr_player_future; // TODO add better sprite
    default:
        return spr_noone;
}
