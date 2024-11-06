sprite_index = global.player.sprite_index

if image_alpha > 0
{
	image_alpha = image_alpha - 0.05
}
else
{
	instance_destroy()
}