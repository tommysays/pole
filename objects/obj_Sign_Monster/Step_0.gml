/// @description Insert description here
// You can write your code in this editor

switch (state) {
	case SignMonsterState.ENTERING:
		var nextY = y - Speed;
		if (nextY <= VerticalDestination) {
			nextY = VerticalDestination;
			state = SignMonsterState.WAITING;
			if (LeaveDelay > 0) {
				alarm[0] = room_speed * LeaveDelay;
			}
		} else {
			y = nextY;
		}
		break;
	case SignMonsterState.LEAVING:
		var nextY = y - Speed;
		if (nextY < 0 - sprite_height) {
			instance_destroy();
		} else {
			y = nextY;
		}
		break;
}