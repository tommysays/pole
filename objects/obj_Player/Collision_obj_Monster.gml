/// @description Insert description here
// You can write your code in this editor

if (other.sprite_index == spr_MonsterLR_Attack) && (other.image_index >= 3){
	
other.invincible = true	
} else if (other.invicible == false) //only do attack stuff if monster isn't invicible
{
	if (other.IsGettingHit == false && IsAttacking==true){
		other.IsGettingHit = true;
		other.alarm[1]=5; //set hurt color blending
		other.hp = other.hp - 1;

		if (other.object_index == obj_MonsterSR){
			other.sprite_index = spr_MonSR_Hit;
			other.image_index = 0;
				
		}else if (other.object_index == ob_MonsterLR){
			other.sprite_index = spr_MonsterLR_Hit;
			other.image_index = 0;
		} 

	}
}

if ((other.IsAttacking == true) && (IsHit == false) && (other.image_index >= 5))
{ //get hit if enemy is attacking at frame 5>
	if (other.IsGettingHit == false){ //in case the monster is in hurt phase
		health = health -1;
		IsHit = true;
		sprite_index = spr_idle_spin;
		IsAttacking = false;
		alarm[1] = 100;
		alarm[2] = 1;
	}
}
	
