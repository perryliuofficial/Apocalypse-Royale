/// @description Insert description here
// You can write your code in this editor
effect_create_above(ef_flare, x, y, 1, c_red);
instance_destroy();
global.dead +=1;
instance_create_layer(x,y,"Instances",oZom)