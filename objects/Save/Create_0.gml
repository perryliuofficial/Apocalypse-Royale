/// @description Insert description here
// You can write your code in this editor
var map = ds_map_create();

map[? "FPS"] = global.FPS;
map[? "AUDIO"] = global.AUDIO;
map[? "SCREEN"] = global.SCREEN;

map[? "rT1"] = global.rT1;
map[? "rT2"] = global.rT2;
map[? "rT3"] = global.rT3;
map[? "rT4"] = global.rT4;
map[? "rT5"] = global.rT5;

map[? "rI1"] = global.rI1;
map[? "rI2"] = global.rI2;
map[? "rI3"] = global.rI3;

ds_map_secure_save(map,"GameOptions");
ds_map_destroy(map);

instance_destroy()