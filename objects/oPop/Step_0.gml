/// @description Insert description here
// You can write your code in this editor
if global.pause=false{
speed = movespeed;

// Die if no health
if heart <=0 {instance_destroy();global.dead +=1;effect_create_above(ef_flare, x, y, 1, c_red);}

// Slow down if over obstacles
if position_meeting(x, y, oSLOW){speed = movespeed*0.3;} else {speed = movespeed;}

// Return to map if out of bounds
if x < 0 {move_towards_point(x+100,y,speed);}
if x > room_width {move_towards_point(x-100,y,speed);}
if y < 0 {move_towards_point(x,y+100,speed);}
if y > room_height {move_towards_point(x,y-1,speed);}

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



//determine if closes entity is human or zombie
closesthuman = distance_to_object(instance_nth_nearest(x,y,oPop,2));
closestzombie=instance_nearest(x,y,oZom);
//if human is closest
if distance_to_object(closesthuman) < distance_to_object(closestzombie) {
	//and human is within 80px
	if distance_to_object(closesthuman) <80{
	//run towards target
	if confrontation = 2{
		move_towards_point(closesthuman.x,closesthuman.y,speed);
		action="Engaging Contestant";
		printaction="Engaging Contestant";
	}
	//or run away
	else if confrontation = 1{
		move_towards_point(closesthuman.x,closesthuman.y,-speed*1.2);
		action="Escaping Contestant";
		printaction="Escaping Contestant";
	}
}}
//if zombie is closest
else {
	//and zombie is within 50px
	if distance_to_object(closestzombie) <50{
		move_towards_point(closestzombie.x,closestzombie.y,-speed*1.2);
		action="Escaping Zombie";
		printaction="Escaping Zombie";
	}
}

}
else {speed = 0}