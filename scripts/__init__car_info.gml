globalvar car_info;
var m;

car_info = ds_map_create();

m = ds_map_create();
m[? 'name'] = "A-Z Speeder 5000";
m[? 'desc'] = "This vintage car was once used as a prop in some old spy movie, hence the design, it even includes license plate with EV1L4L1FE on it. It was kept in your‘s dad's garage, until you found in a dire need of a car. From that time onwards, it was refitted to a hovercraft, and, after many crashes, it‘s value decreased dramatically.";
m[? 'spec'] = "Activates mask that disguises your car as another on the map, hiding you from the police.";
m[? 'own'] = true;
m[? 'price'] = 0;
m[? 'sprite'] = spr_player_future;
car_info[? 'SPEEDER 5000'] = m;

m = ds_map_create();
m[? 'name'] = "DeLorian";
m[? 'desc'] = "This unique car from limited series, created in 1985, was found abandoned last year in the lasting forests near Nove Blansko. The car was repaired, repainted and equipped with newest technology, but still makes number one choice for the historicans - car has enabled flux capacitor powered by plutonium.";
m[? 'spec'] = "New technologies allow the flux capacitor to be charged faster, but unfortunately it is stuck between year 1987 and this one.";
m[? 'own'] = true;
m[? 'price'] = 0;
m[? 'sprite'] = spr_player_delorian;
car_info[? 'DELORIAN'] = m;

m = ds_map_create();
m[? 'name'] = "Beer truck";
m[? 'desc'] = "In an honor of an old game (even this game was supposed to be BeerRacing 2) we are introducing this old-timey truck. Interesting fact: this truck originally was not transporting beer, but liquid acid. However, in 1997, after many strikes, the company decided to listen to employees' needs and to transport beer. Nevertheless, to cut out costs, they ordered to collect beer from the ground.";
m[? 'spec'] = "Get a drink. It will temporary stop running out your drunkenness. But beware, it may have some side effects.";
m[? 'own'] = true;
m[? 'price'] = 0;
m[? 'sprite'] = spr_player_truck;
car_info[? 'BEER TRUCK'] = m;


