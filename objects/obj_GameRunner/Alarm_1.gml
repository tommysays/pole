/// @description Wave Update/Next level	
// You can write your code in this editor

SRWaveID = SRWaveID+1;
LRWaveID =LRWaveID+1;

if (SRWaveID >= ds_list_size(SRMonster_Waves) || LRWaveID >= ds_list_size(LRMonster_Waves)) { //if ended waves
	//next level
	endtransition=true;
} else {
	alarm[0] = 1; //start next wave
}
