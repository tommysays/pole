/// @description Insert description here
// You can write your code in this editor

if (Starting && !IsIntroPage) {
    y = y + 3;
	if (y >= room_height / 2) {
		Starting = false;
		ReadyForMonsters = true;
		alarm[0] = 100; //waits 2 seconds in center before allowing movement
	}
}


// Player input handling.
if (CanMove && !IsAttacking) {
	var inputLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var inputRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var inputDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var inputUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	
	// Long range attack.
	if (keyboard_check(vk_space) && !IsHit) {
		if (inputLeft) {
			IsAttacking = true;
			sprite_index = spr_long_attack;
			image_index = 0;
		} else if (inputRight) {
			IsAttacking = true;
			sprite_index = spr_long_attack_right;
			image_index = 0;
		}
	// Short range attack.
	} else if (keyboard_check(vk_shift) && !IsHit) {
		if (inputLeft) {
			IsAttacking = true;
			sprite_index = spr_short_attack;
			image_index = 0;
			image_xscale=image_xscale*-1;
		} else if (inputRight) {
			IsAttacking = true;
			sprite_index = spr_short_attack;
			image_index = 0;
		}
	// Move down.
	} else if (inputDown) {
		if (y + Speed + (sprite_height / 2) < room_height) {
			y = y + Speed;
		}
	// Move up.
	} else if(inputUp) {
		if (y - Speed - (sprite_height / 2) >= 0 ) {
			y = y - Speed;
		}
	}
}

