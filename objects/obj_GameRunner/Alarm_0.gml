/// @description CreateMonstersPerWaveData
// You can write your code in this editor

if (SRWaveID < ds_list_size(SRMonster_Waves)) && (LRWaveID < ds_list_size(LRMonster_Waves)){


	var i = 0;
	 audio_play_sound(Enemy_Appear,6,false);

	while (i < ds_list_find_value(SRMonster_Waves, SRWaveID))
	{
	var row = irandom_range(0,3);
	var column = irandom_range(0,1);
	new_monster = instance_create_layer(512, (row*256)+64, "Instances", obj_MonsterSR);
	if (column == 0){
		
		
		new_monster.image_xscale = new_monster.image_xscale *-1;
		new_monster.x = 512;
		} 
		
		
	i = i +1;

	}

	i = 0;

	while (i < ds_list_find_value(LRMonster_Waves, LRWaveID))
	{
	var row = irandom_range(0,3);
	var column = irandom_range(0,1);
	new_monster = instance_create_layer(960, (row*256)+64, "Instances", ob_MonsterLR);
	if (column == 0){
		new_monster.x = 48;
			
		}else{
		new_monster.image_xscale = new_monster.image_xscale *-1; //flip the guy on the right to look left	
		}
	i = i +1;
	}
	OngoingWave = true;
}