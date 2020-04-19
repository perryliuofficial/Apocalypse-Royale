/// @description Roaming AI
// You can write your code in this editor
randomize();
if roam=true and global.pause=false{
	roamdistance1 = random_range(-15,15);
	roamdistance2 = random_range(-15,15);
	move_towards_point(x+roamdistance1,y+roamdistance2,speed);
}
alarm[0] = random_range(1,room_speed*3);