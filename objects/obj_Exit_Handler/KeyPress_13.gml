/// @description Insert description here
// You can write your code in this editor
var name = room_get_name(room);
if (name == "Room_Tutorial") {
	audio_stop_all();
	room_goto_next();
}