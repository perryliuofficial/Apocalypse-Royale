/// @description Insert description here
// You can write your code in this editor
stage=1;
target = instance_nearest(x,y,oRescue);
movespeed=1;
tempspeed=movespeed;
image_angle = point_direction(x, y, target.x, target.y)-90;
audio_play_sound(snd_helicopter, 10, true);
audio_play_sound(snd_radio, 10, true);


helispawnloc = irandom_range(1,4);
switch(helispawnloc) {
	case 1:
	helix = -50;
	heliy = random_range(0,room_height);
	exit;
		
	case 2:
	helix = room_width+50;
	heliy = random_range(0,room_height);
	exit;
		
	case 3:
	helix = random_range(0,room_width);
	heliy = -50;
	exit;
		
	case 4:
	helix = random_range(0,room_width);
	heliy = room_height+50;
	exit;
}