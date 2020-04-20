/// @description Insert description here
// You can write your code in this editor
randomize();
enemy = irandom_range(40,75);

//determine to spawn left, right, top, bottom of screen
for (i = 0; i < enemy; i += 1){
	randomize();
	spawnloc = irandom_range(1,4);
	if spawnloc=1{spawnx=-5;spawny=random_range(-5,room_height+5)}
	if spawnloc=2{spawnx=room_width+5;spawny=random_range(-5,room_height+5)}
	if spawnloc=3{spawnx=random_range(-5,room_height+5);spawny=-5}
	if spawnloc=4{spawnx=random_range(-5,room_height+5);spawny=room_height+5}
	instance_create_layer(spawnx, spawny, "Instances",oZom);	
}