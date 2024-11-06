if global.Menu = 2
{
	sprite_index = EXIT_HIGHLIGHT
}
if global.Menu != 2
{
	sprite_index = EXIT
}
if global.Menu = 2
{
	if keyboard_check_pressed(vk_space)
	{
		game_end()
	}
}