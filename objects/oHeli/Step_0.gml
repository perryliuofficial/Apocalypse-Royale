/// @description Insert description here
// You can write your code in this editor
if global.pause=true {tempspeed=0}else{tempspeed=movespeed};

switch(stage){
	case 1:
	move_towards_point(target.x,target.y,tempspeed);
	if abs(x - target.x) <2 and abs(y-target.y) <2{
		stage=2;	
	};
	break;
	
	case 2:
	speed=0;
	if place_meeting(x, y, oPop){
		instance_destroy(oPop);
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
			global.news1 = "Escaped via helicopter +5000";
		}
		global.rescued +=1;
		stage=3;	
	};
	break;
	
	case 3:
	move_towards_point(helix,heliy,tempspeed);
	image_angle = point_direction(x, y, helix, heliy)-90;
	if abs(x - helix) <10 and abs(y-heliy) <10{
		global.win = true;	
	}
}