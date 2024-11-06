var _keyConfirm = keyboard_check_pressed(global.JumpKey);


if (place_meeting(x,y, global.player) && opened = 0)
{
	if _keyConfirm
	{
		if opened = 0
		{
			sprite_index = (Door_OPEN)
			audio_play_sound(DoorSFX,5,false)
		}
		opened = 1
		global.stun = 4
		if alarm[0] = -1
		{
			alarm[0] = 120
		}
	}
}