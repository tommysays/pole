/// @description CreateMonstersPerWaveData
// You can write your code in this editor

if (SRWaveID < ds_list_size(SRMonster_Waves)) && (LRWaveID < ds_list_size(LRMonster_Waves)){


	var i = 0;


	while (i < ds_list_find_value(SRMonster_Waves, SRWaveID))
	{
	var row = irandom_range(0,3);
	var column = irandom_range(0,1);
	new_monster = instance_create_layer(640, (row*256)+64, "Instances", obj_MonsterSR);
	if (column == 0){
		new_monster.x = 256;
		}
	i = i +1;
	}

	i = 0;

	while (i < ds_list_find_value(LRMonster_Waves, LRWaveID))
	{
	var row = irandom_range(0,3);
	var column = irandom_range(0,1);
	new_monster = instance_create_layer(832, (row*256)+64, "Instances", ob_MonsterLR);
	if (column == 0){
		new_monster.x = 64;
		}
	i = i +1;
	}
	OngoingWave = true;
}