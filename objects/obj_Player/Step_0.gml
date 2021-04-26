/// @description Insert description here
// You can write your code in this editor

if (Starting == true && !IsIntroPage) {
    y = y + 3;
	if (y >= room_height/2) {
		Starting = false;
		ReadyForMonsters = true;
		alarm[0] = 100; //waits 2 seconds in center before allowing movement
	}
}

