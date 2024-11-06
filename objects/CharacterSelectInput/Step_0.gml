window_set_caption("Blorb")
if !gamepad_is_connected(0)
{
	var _keyRight = keyboard_check_pressed(vk_right);
	var _keyLeft = keyboard_check_pressed(vk_left);
	var _Confirm = keyboard_check_pressed(vk_enter)
}
if gamepad_is_connected(0)
{
	var _Confirm = gamepad_button_check(0,gp_face1);
	var _keyRight = (gamepad_axis_value(0,gp_axislh) > 0);
	var _keyLeft = (gamepad_axis_value(0,gp_axislh) < 0);  
}

switch ( global.character ) {
case 1 :
	oCameraCS.follow = BlorbCS
break;
case 2 :
	oCameraCS.follow = GameCS
break;
case 3 :
	oCameraCS.follow = TrixCS
break;
case 4 :
	oCameraCS.follow = DougCS
break;
}
switch ( global.character ) {
case 1 :
if chosen = 0
{
	if _Confirm
	{
		chosen = 1
		BlorbCS.chosen = 1
	}
}
break;
case 2 :
if chosen = 0
{
	if _Confirm
	{
		chosen = 1
		GameCS.chosen = 1
	}
}
break;
case 3 :
if chosen = 0
{
	if _Confirm
	{
		chosen = 1
		TrixCS.chosen = 1
	}
}
break;
case 4 :
if chosen = 0
{
	if _Confirm
	{
		chosen = 1
		DougCS.chosen = 1
	}
}
break;
}
if _keyRight && global.character < 4 && chosen = 0
{
	global.character = global.character + 1
}
if _keyLeft && global.character > 1 && chosen = 0
{
	global.character = global.character - 1
}

if keyboard_check_pressed(vk_right) && chosen = 0
{

		audio_play_sound(cs_traversing_sound,5,false)
		
}
if keyboard_check_pressed(vk_left) && chosen = 0
{
	
audio_play_sound(cs_traversing_sound,5,false)

}
if keyboard_check_pressed(vk_enter) && chosen = 0
{
	
audio_play_sound(confirm,5,false)

}