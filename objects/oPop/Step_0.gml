/// @description Insert description here
// You can write your code in this editor
if global.pause=false{
speed = movespeed;

// Die if no health
if heart <=0 {
	
	instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=5000;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Human death by human +5000";
		}
	global.dead +=1;
	global.alive-=1;
	effect_create_above(ef_flare, x, y, 1, c_red);
}
/*
// Bomb damange
if place_meeting(x, y, oBoom) and oBoom.awwshit = true{
	heart -=15;
	if heart <=0{
		instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=1000;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Human death by bomb +1000";
		}
	global.dead +=1;
	global.alive-=1;
	effect_create_above(ef_flare, x, y, 1, c_red);	
	}
}
*/

// Slow down if over obstacles
if position_meeting(x, y, oSLOW){speed = movespeed*0.3;} else {speed = movespeed;}

// If extraction spot has been set
if global.rescue = true {
	// If supply drop is nearish head for that
	if instance_exists(oSupply){
	closestsupply = instance_nearest(x,y,oSupply);
	if point_distance(closestsupply.x, closestsupply.y, oRescue.x, oRescue.y)+distance_to_object(closestsupply) <=distance_to_object(oRescue)+200{
		move_towards_point(closestsupply.x,closestsupply.y,speed);
		action="Locating Supplies";
	} else {move_towards_point(oRescue.x,oRescue.y,speed);action="Extracting";}
	}
	// Otherwise beeline for extraction spot
	else {move_towards_point(oRescue.x,oRescue.y,speed);action="Extracting";}
}
// if there's no extraction spot and a supply drops is nearish go for that
else if instance_exists(oSupply){
	closestsupply = instance_nearest(x,y,oSupply);
	if distance_to_object(closestsupply) <500 {
		move_towards_point(closestsupply.x,closestsupply.y,speed);
		action="Locating Supplies";
}}
// if there's no extraction spot and no supply drops just roam around
else {
	move_towards_point(x+roamdistance1,y+roamdistance2,speed);
	action="Roaming";
}

if instance_exists(oMove) {
	nearestbeacon = instance_nearest(x,y,oMove);
	if distance_to_object(nearestbeacon) < 300{
		move_towards_point(nearestbeacon.x,nearestbeacon.y,speed);
		action="Locating Beacon";
	}
}

//determine if closes entity is human or zombie
closesthuman = distance_to_object(instance_nth_nearest(x,y,oPop,2));
closestzombie=instance_nearest(x,y,oZom);
//if human is closest
if distance_to_object(closesthuman) < distance_to_object(closestzombie) {
	//and human is within 80px
	if distance_to_object(closesthuman) <80{
	//run towards target
	if confrontation = 2{
		move_towards_point(closesthuman.x,closesthuman.y,speed*1.3);
		action="Engaging Contestant";
	}
	//or run away
	else if confrontation = 1{
		move_towards_point(closesthuman.x,closesthuman.y,-speed*1.2);
		action="Escaping Contestant";
	}
}}
//if zombie is closest
else {
	//and zombie is within 50px
	if distance_to_object(closestzombie) <50{
		move_towards_point(closestzombie.x,closestzombie.y,-speed*1.3);
		action="Escaping Zombie";
		printaction="Escaping Zombie";
	}
}

if instance_exists(oHeli){
	if oHeli.stage = 2 and ammo >=10{
		move_towards_point(oHeli.x,oHeli.y,speed);
		action="Extracting";
		printaction="Extracting";
	}
}

// Return to map if out of bounds
if x < 50 {move_towards_point(x+100,y,speed);}
if x > room_width-50 {move_towards_point(x-100,y,speed);}
if y < 50 {move_towards_point(x,y+100,speed);}
if y > room_height-50 {move_towards_point(x,y-1,speed);}
// Kill player if too out of bounds
if x < -5{instance_destroy();global.alive-=1;global.dead+=1;}
if x > room_width+5 {instance_destroy();global.alive-=1;global.dead+=1;}
if y < -5 {instance_destroy();global.alive-=1;global.dead+=1;}
if y > room_height+5 {instance_destroy();global.alive-=1;global.dead+=1;}

}
else {speed = 0}

//Tell camera to follow character
if global.cameramove = true and position_meeting(mouse_x, mouse_y, self){
	if mouse_check_button_pressed(mb_left){
		oPop.cameramarked = false;
		global.cameramove = false;
		global.menu = 0;
		cameramarked = true;
	}
}

if cameramarked = true{
	global.camerafollowx = x;
	global.camerafollowy = y;
}