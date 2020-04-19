/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("R")){room_restart()}
if keyboard_check_pressed(vk_escape){
	if global.pause = false {global.pause = true}
	else {global.pause = false}
}