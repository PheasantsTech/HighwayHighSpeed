/*
usage: achievement_get_description(achievement_name)
*/
globalvar top_score_messages;
switch(argument0){
    case "Die young":
        return "You managed to kill yourself during tutorial.";
    case "First turns":
        return "Now you know how to change your path";
    case "New top score!":
        return top_score_messages[| irandom(ds_list_size(top_score_messages) - 1)];
    case "Wasting time":
        return "When you will get done with doing nothing, call me. I will be waiting.";
    case "Baby killer":
        return "Crush another car during tutorial";
    case "Learned":
        return "Tutorial completed"; 
    default:
        return "";
}
