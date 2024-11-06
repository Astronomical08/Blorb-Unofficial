audio_stop_all()
if ((room != lobby) && (room != menu) && (room != CSroom)) {
if global.player = oPlayer {
if global.mode = "easy"
{
	audio_play_sound(mu_NormalDifficulty, 1, true)
}
if global.mode = "hard"
{
	audio_play_sound(mu_NormalDifficulty, 1, true)
}
if global.mode = undefined
{
	audio_play_sound(mu_NormalDifficulty, 1, true)
}
}

if global.player = oGameinyan {
if global.mode = "easy"
{
	audio_play_sound(Bounded, 1, true)
}
if global.mode = "hard"
{
	audio_play_sound(Bounded, 1, true)
}
if global.mode = undefined
{
	audio_play_sound(Bounded, 1, true)
}
}

if global.player = oDOUG {
if global.mode = "easy"
{
	audio_play_sound(Bold_Bucks, 1, true)
}
if global.mode = "hard"
{
	audio_play_sound(Bold_Bucks, 1, true)
}
if global.mode = undefined
{
	audio_play_sound(Bold_Bucks, 1, true)
}
}
if global.player = oTrixter {
if global.mode = "easy"
{
	audio_play_sound(DeadSmile, 1, true)
}
if global.mode = "hard"
{
	audio_play_sound(DeadSmile, 1, true)
}
if global.mode = undefined
{
	audio_play_sound(DeadSmile, 1, true)
}
}

}
if room = lobby
{
	audio_play_sound(blorblobby, 1, true)
}
if room = CSroom
{
	audio_play_sound(CharacterSelect_Loop_V2, 1, true)
}