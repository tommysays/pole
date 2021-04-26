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
	var inputDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var inputUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var inputLongAttack = keyboard_check(vk_space);
	var inputShortAttack = keyboard_check(vk_shift);

	var facingLeft = false;
	if (sprite_index == spr_idle_spin) {
		facingLeft = image_index >= 4;
	}
	
	// Long range attack.
	if (inputLongAttack && !IsHit) {
		IsAttacking = true;
		if (facingLeft) {
			sprite_index = spr_long_attack;
			image_index = 0;
		} else {
			sprite_index = spr_long_attack_right;
			image_index = 0;
		}
	// Short range attack.
	} else if (inputShortAttack && !IsHit) {
		IsAttacking = true;
		if (facingLeft) {
			sprite_index = spr_short_attack;
			image_index = 0;
			image_xscale=image_xscale*-1;
		} else {
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

