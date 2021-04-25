/// @description Insert description here
// You can write your code in this editor
if (IsGettingHit)
{
 alarm[0] = 10; //keep trying until not getting hurt 	
}else{

	var i = irandom_range(0,3);
	if (i<2){  
	IsMoving =true;	//move
	NewY = (256*irandom_range(0,3))+64;
	while (abs(NewY-y) <=5){
		NewY = (256*irandom_range(0,3))+64;
		}
	}else
	{
	IsAttacking = true;
	sprite_index = spr_MonsterLR_Attack;
	image_index = 0;
	}
}