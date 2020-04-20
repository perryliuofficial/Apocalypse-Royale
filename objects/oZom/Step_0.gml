/// @description Insert description here

if global.pause=false{
speed = movespeed;

// Death
if blood <= 0 {
	instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=500;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Zombie death by human +500";
		}
}
/*
// Bomb damange
if place_meeting(x, y, oBoom) and oBoom.awwshit = true{
	blood -=15;
	if blood <=0{
		instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=100;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Zombie death by bomb +100";
		}
	}
}
*/
// Slow down if over obstacles
if position_meeting(x, y, oSLOW){speed = movespeed*0.3;}
else {speed = movespeed;}

// Return to map if out of bounds
if x < 0 {move_towards_point(x+100,y,speed);}
if x > room_width {move_towards_point(x-100,y,speed);}
if y < 0 {move_towards_point(x,y+100,speed);}
if y > room_height {move_towards_point(x,y-1,speed);}

if instance_exists(oMove) {
	nearestbeacon = instance_nearest(x,y,oMove);
	if distance_to_object(nearestbeacon) < 300{
		move_towards_point(nearestbeacon.x,nearestbeacon.y,speed);
	}
}

// if humans exist, set nearest one as target
if instance_nearest(x,y,oPop) != noone{
	target = instance_nearest(x,y,oPop);
	// if target is within 180px, move towards target
	if distance_to_object(target) < 200{
		roam = false;
		move_towards_point(target.x,target.y,speed);
	}
	// else if someone has fired a gun recently and is within 360px
	else if target.noisemaker = true and distance_to_object(target)<360{
		roam = false;
		move_towards_point(target.x,target.y,speed);
	}
	// else if extraction point has been set go there
	else if global.rescue = true {move_towards_point(oRescue.x,oRescue.y,speed)}
	// else roam around randomly
	else {roam = true;}
}


}
else {speed = 0}