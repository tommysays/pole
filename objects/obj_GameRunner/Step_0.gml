/// @description Manage waves and rooms.

//background movement
score = score+1;

if (endtransition == true) {
	player.y = player.y + 15;
	player.CanMove = true;
	player.sprite_index = spr_idle_spin;
	player.image_index = 0;
	if (player.y > room_height) {
		room_goto_next();	
	}
}

// Infinite scrolling background.
if (layer_get_y("Background_Main1") <= -2304) {
	layer_y("Background_Main1",1152);
} else if (layer_get_y("Background_Main2") <= -2304) {
	layer_y("Background_Main2",1152);
}



if (player.ReadyForMonsters) {
	//start wave
	alarm[0] = 1;
	var p = irandom_range(300, 800);
	alarm[2] = p;
	player.ReadyForMonsters = false;
}


if (OngoingWave && !instance_exists(obj_Monster)) {
	OngoingWave = false;
	obj_GameRunner.alarm[1] = 100; //trigger Game Runner wave update/end level
}


if (health <= 0){
	//gameover
	audio_play_sound(PlayerDead,6,false);
	game_restart();
}
