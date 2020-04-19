/// @description Shoot Bullets
// if game is not paused
if global.pause = false {
	// if another person is nearby shoot them
	target=instance_nth_nearest(x,y,oPop,2)
	if ammo >0 and distance_to_object(target) <120{
		action="Attacking Contestant";
		printaction="Attacking Contestant";
		var bullet = instance_create_layer(x,y,"Instances",oBullet);
		bullet.targetx = target.x;
		bullet.targety = target.y;
		bullet.creator = self;
		ammo -=1;
		effect_create_above(ef_flare, x, y, 1, c_white);
		noisemaker = true;
		// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 80 {
			global.TVscore +=10;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Gun violence +10";
		}
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
		// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=10;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Gun violence +10";
		}
		alarm[1] = room_speed*10;
	}
	alarm[0]=random_range(room_speed*0.1,room_speed*0.5);
}
else {
	alarm[0]=1;
}