/// @description Shoot Bullets
// if game is not paused
if global.pause = false {
	// if another person is nearby shoot them
	target=instance_nth_nearest(x,y,oPop,2)
	if ammo >0 and distance_to_object(target) <80{
		action="Attacking Contestant";
		printaction="Attacking Contestant";
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.targetx = target.x;
		bullet.targety = target.y;
		bullet.creator = self;
		ammo -=1;
		effect_create_above(ef_flare, x, y, 1, c_white);
		noisemaker = true;
		alarm[1] = room_speed*10;
		alarm[0]=random_range(room_speed*0.1,room_speed*0.5);
		exit;
	}
	// if a zombie is nearby shoot them
	target=instance_nearest(x,y,oZom);
	if ammo >0 and distance_to_object(target) <80{
		action="Attacking Zombie";
		printaction="Attacking Zombie";
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.targetx = target.x;
		bullet.targety = target.y;
		bullet.creator = self;
		ammo -=1;
		effect_create_above(ef_flare, x, y, 1, c_white);
		noisemaker = true;
		alarm[1] = room_speed*10;
	}
	alarm[0]=random_range(room_speed*0.1,room_speed*0.5);
}
else {
	alarm[0]=1;
}