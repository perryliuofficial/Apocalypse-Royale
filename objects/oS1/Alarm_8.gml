/// @description Spawn Humans
// You can write your code in this editor

global.humspawn-=1;
repeat(20){
randomize()
spawnzomx=random(room_width);
spawnzomy=random(room_height);
instance_create_layer(spawnzomx,spawnzomy,"Instances",oPop);
}