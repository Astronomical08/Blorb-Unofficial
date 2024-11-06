var _keyConfirm = keyboard_check_pressed(global.JumpKey);

if (place_meeting(x,y, global.player))
{
	if _keyConfirm
	{
		room_goto(lobby)
	}
}