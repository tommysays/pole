/// @description Insert description here
// You can write your code in this editor
randomize(); //TO DO: maybe move to the very start of game

var roomName = room_get_name(room);
if (roomName == "Room_Throne" || roomName = "Room_Intro") {
	instance_destroy();
	return;
}

player = instance_create_layer(512, 0, "Instances", obj_Player);
SRMonster_Waves = ds_list_create();
ds_list_clear(SRMonster_Waves);

LRMonster_Waves = ds_list_create();
ds_list_clear(LRMonster_Waves);
SRWaveID = 0;
LRWaveID = 0;
OngoingWave = false;
endtransition = false;
gameover = false;
gameover_fade = 0;
gameover_fadetime = 100;
gameover_done = false;

health = 5; //set player's health to 5

//fill in waves-- this is a sample for level 1
if (room == Room_Stage1)
{
ds_list_add(SRMonster_Waves, 1);
ds_list_add(SRMonster_Waves, 2);
ds_list_add(SRMonster_Waves, 1);
ds_list_add(SRMonster_Waves, 2);

ds_list_add(LRMonster_Waves, 0);
ds_list_add(LRMonster_Waves, 0);
ds_list_add(LRMonster_Waves, 1);
ds_list_add(LRMonster_Waves, 2);
}
else if (room == Room_Stage2)
{
ds_list_add(SRMonster_Waves, 1);
ds_list_add(SRMonster_Waves, 3);
ds_list_add(SRMonster_Waves, 2);
ds_list_add(SRMonster_Waves, 3);

ds_list_add(LRMonster_Waves, 1);
ds_list_add(LRMonster_Waves, 2);
ds_list_add(LRMonster_Waves, 2);
ds_list_add(LRMonster_Waves, 3);
}



layer_vspeed("Background_Main1", -0.25);
layer_vspeed("Background_Main2", -0.25);



