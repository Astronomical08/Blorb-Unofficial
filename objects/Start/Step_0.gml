if global.Menu = 1
{
	sprite_index = START_HIGHLIGHTED
}
if global.Menu != 1
{
	sprite_index = START
}
if instance_exists(Object38) && global.Menu = 1 && OBSOLETE_CAMERA_FUCK.chosen = 0
{
	if keyboard_check_pressed(vk_enter) && Object38.GRAH = 0
	{
		OBSOLETE_CAMERA_FUCK.chosen = 1
		Object38.GRAH = 1
	}
}
if keyboard_check_pressed(vk_right)
{

		audio_play_sound(title_traversing_sound,5,false)
		
}
if keyboard_check_pressed(vk_left)
{
	
audio_play_sound(title_traversing_sound,5,false)

}
if keyboard_check_pressed(vk_enter)
{
	
audio_play_sound(confirm,5,false)

}