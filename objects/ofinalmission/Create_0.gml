/// @description Insert description here
// You can write your code in this editor
alarm[0]=room_speed*0.5;

global.rescue = true;

randomize();
	helispawnloc = irandom_range(1,4);
	switch(helispawnloc) {
		case 1:
		helix = -50;
		heliy = random_range(0,room_height);
		instance_create_layer(helix,heliy,"Overlay",ofinalmissionHelo);
		exit;
		
		case 2:
		helix = room_width+50;
		heliy = random_range(0,room_height);
		instance_create_layer(helix,heliy,"Overlay",ofinalmissionHelo);
		exit;
		
		case 3:
		helix = random_range(0,room_width);
		heliy = -50;
		instance_create_layer(helix,heliy,"Overlay",ofinalmissionHelo);
		exit;
		
		case 4:
		helix = random_range(0,room_width);
		heliy = room_height+50;
		instance_create_layer(helix,heliy,"Overlay",ofinalmissionHelo);
		exit;
	}
	
	oP5.alarm[8]=1;
//global.rescue = true;
//static=false;