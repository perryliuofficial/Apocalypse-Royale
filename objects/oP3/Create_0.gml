/// @description Insert description here
// You can write your code in this editor
global.rescue = false;
global.rescued = 0;
global.alive = 0
global.dead = 0;
global.menu = 0;
global.pause = false;
global.bomb=0;
global.supply=0;
global.zomspawn=0;
global.movement=99;
global.heli=false;
global.win=false;
global.cameramove = false;
global.camerafollowx = 0;
global.camerafollowy = 0;
//missiontimer = 0;
randomize();
//people = irandom_range(25,35);
people = 2;
global.alive = people;
enemy = irandom_range(300,350);

for (i = 0; i < people; i += 1){
	spawnx = random_range(0,room_width);
	spawny = random_range(0,room_height);
	instance_create_layer(spawnx, spawny, "Instances",oPop);	
}

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

//instance_create_layer(x,y,"Instances",oFog);
alarm[0]=room_speed*20;
alarm[1]=room_speed*30;
//alarm[2]=room_speed*40;


//var TEMPSTUFF1 = instance_create_layer(1088,576,"Instances",oPop);
//TEMPSTUFF1.ammo = 0;
//TEMPSTUFF1.movespeed = 0.1;

//instance_create_layer(1472,546,"Instances",oRescue);