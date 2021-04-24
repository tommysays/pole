/// @description Wave Update/Next level	
// You can write your code in this editor

SRWaveID = SRWaveID+1;
LRWaveID =LRWaveID+1;

if (SRWaveID >= ds_list_size(SRMonster_Waves)){ //if ended waves
	//next level
	game_end();
	
} else{
 alarm[0] = 1; //start next wave
}
