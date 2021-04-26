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
		if (other.hp > 0){
			audio_play_sound(EnemyHit,5,false);
		} else{
			audio_play_sound(EnemyDead,5,false);	
		}
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
		image_xscale= 1;
		sprite_index = spr_idle_spin;
		IsAttacking = false;
		alarm[1] = 0.5 * room_speed;
		alarm[2] = 1;
		audio_play_sound(PlayerHit,2,false);
	}
}
	
