if place_meeting(x,y,global.player)
{
	global.score = global.score + 1
	if soundplayed = 0
	{
		soundplayed = 1
		audio_play_sound(buck_collect,5,false)
		
	}
	instance_destroy()
}