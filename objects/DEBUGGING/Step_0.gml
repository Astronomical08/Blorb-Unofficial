var _keyDEBUG = keyboard_check(vk_space);
if global.debugging = 1
{
	window_set_caption("DEBUG MODE ON (for you dummies, this makes it so you can see stuff that arent seen when the game is played)")
}
if global.debugging = 0
{
	window_set_caption("DEBUG MODE OFF (for you dummies, this makes it so you can't see stuff that arent seen when the game is played)")
}
if _keyDEBUG
{
	if global.debugging = 0
	global.debugging = 1
}
else
{
	global.debugging = 0
}