/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	audio_stop_all();
	room_restart();
}