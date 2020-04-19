/// @description Insert description here

if global.pause=false{
speed = movespeed;

// Death
if blood <= 0 {instance_destroy();}

// Slow down if over obstacles
if position_meeting(x, y, oSLOW){speed = movespeed*0.3;}
else {speed = movespeed;}

// Return to map if out of bounds
if x < 0 {move_towards_point(x+100,y,speed);}
if x > room_width {move_towards_point(x-100,y,speed);}
if y < 0 {move_towards_point(x,y+100,speed);}
if y > room_height {move_towards_point(x,y-1,speed);}

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