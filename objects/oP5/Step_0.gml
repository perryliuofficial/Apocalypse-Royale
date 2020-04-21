/// @description Insert description here
// Pause Menu
if keyboard_check_pressed(vk_escape){
	if global.pause = false {
		global.pause = true;
		instance_create_layer(room_width/2-150,room_height/2+100,"Overlay",oQuit);
		instance_create_layer(room_width/2+150,room_height/2+100,"Overlay",oRestart);
		}
	else {global.pause = false;
		instance_destroy(oQuit);
		instance_destroy(oRestart);
		}
}
// Spawn extraction helicopter
/*
if global.rescue=true and global.heli=false and global.alive=1{
	global.heli=true;
	randomize();
	helispawnloc = irandom_range(1,4);
	switch(helispawnloc) {
		case 1:
		helix = -50;
		heliy = random_range(0,room_height);
		instance_create_layer(helix,heliy,"Overlay",oHeli);
		exit;
		
		case 2:
		helix = room_width+50;
		heliy = random_range(0,room_height);
		instance_create_layer(helix,heliy,"Overlay",oHeli);
		exit;
		
		case 3:
		helix = random_range(0,room_width);
		heliy = -50;
		instance_create_layer(helix,heliy,"Overlay",oHeli);
		exit;
		
		case 4:
		helix = random_range(0,room_width);
		heliy = room_height+50;
		instance_create_layer(helix,heliy,"Overlay",oHeli);
		exit;
	}
}
*/

// Camera
if keyboard_check_pressed(ord("1")){
	if global.menu = 1{global.menu = 0;global.cameramove = false;oCircle.alarm[0]=1}else {global.menu = 1;global.cameramove = true}
}

// Extraction
if keyboard_check_pressed(ord("2")){
	if global.rescue = false and !(instance_exists(ofinalmissionTEMP)) {instance_create_layer(mouse_x,mouse_y,"Background",ofinalmissionTEMP)}
}

// Supply Drop
if keyboard_check_pressed(ord("4")) and global.supply >0 and !(instance_exists(oSupplyTEMP)){
	global.menu = 4; instance_create_layer(mouse_x,mouse_y,"Background",oSupplyTEMP);
}

// Movement
if keyboard_check_pressed(ord("3")) and global.movement >0 and !(instance_exists(oMoveTemp)){
	global.menu = 3; instance_create_layer(mouse_x,mouse_y,"Background",oMoveTemp);
}

// Bomb
if keyboard_check_pressed(ord("5")) and global.bomb >0 and !(instance_exists(oBoomTEMP)){
	global.menu = 5; instance_create_layer(mouse_x,mouse_y,"Overlay",oBoomTEMP);
}

//if global.win = false and global.pause = false {
//	missiontimer+=1;
//	printtimer = missiontimer/60;
//}

if global.win = true and global.rescued >=10{global.rP5 = true}

