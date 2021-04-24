/// @description Insert description here
// You can write your code in this editor
randomize(); //TO DO: maybe move to the very start of game
player = instance_create_layer(512, 0, "Instances", obj_Player);
SRMonster_Waves = ds_list_create();
LRMonster_Waves = ds_list_create();
SRWaveID = 0;
LRWaveID = 0;
OngoingWave = false;
health = 5; //set player's health to 5

//fill in waves-- this is a sample for level 1
ds_list_add(SRMonster_Waves, 1);
ds_list_add(SRMonster_Waves, 2);
ds_list_add(SRMonster_Waves, 2);
ds_list_add(SRMonster_Waves, 2);

ds_list_add(LRMonster_Waves, 0);
ds_list_add(LRMonster_Waves, 0);
ds_list_add(LRMonster_Waves, 1);
ds_list_add(LRMonster_Waves, 2);
//




