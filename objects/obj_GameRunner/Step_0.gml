/// @description Insert description here
// You can write your code in this editor


if (player.ReadyForMonsters == true){
	//start wave
alarm[0] = 1;
player.ReadyForMonsters = false;
}


if (OngoingWave && !(instance_exists(obj_Monster)))
{
	OngoingWave = false;
	obj_GameRunner.alarm[1] = 100; //trigger Game Runner wave update/end level
}



if (player.CanMove && (player.IsAttacking==false)){

	if (keyboard_check(vk_space)){ //check if space, then long range attack
				
		if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
			player.IsAttacking = true;
			player.sprite_index = spr_DancerLRAttackingLeft;
			player.image_index = 0;
		} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
			player.IsAttacking = true;
			player.sprite_index = spr_DancerLRAttackingRight;
			player.image_index = 0;
		} 
	
	}if (keyboard_check(vk_shift)){ //check if space, then long range attack
				
		if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
			player.IsAttacking = true;
			player.sprite_index = spr_DancerSRAttackingLeft;
			player.image_index = 0;
		} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
			player.IsAttacking = true;
			player.sprite_index = spr_DancerSRAttackingRight;
			player.image_index = 0;
		} 
	
	} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
		if (player.y+player.Speed+(player.sprite_height/2) < room_height){
			player.y = player.y + player.Speed;
			}
	
	}else if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
		if (player.y-player.Speed-(player.sprite_height/2) >= 0 ){
		player.y = player.y - player.Speed;
		}
	}
}

