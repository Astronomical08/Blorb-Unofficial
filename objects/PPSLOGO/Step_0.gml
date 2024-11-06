if image_alpha != 1 && fade = 0
{
	image_alpha = image_alpha + 0.05
}
if image_alpha = 1 && fade = 0
{
	if alarm[0] = -1
	{
	alarm[0] = 120
	}
	if soundplayed = 0
	{
		soundplayed = 1
		audio_play_sound(PPS_logo_REAL,5,false)
	}
}
if fade = 1
{
	image_alpha = image_alpha - 0.05
}
if fade = 1 && image_alpha = 0
{
	if alarm[1] = -1
	{
	alarm[1] = 60
	}
}